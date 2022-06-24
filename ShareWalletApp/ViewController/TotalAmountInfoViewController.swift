//
//  TotalAmountInfoViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class TotalAmountInfoViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource{
@IBOutlet weak var circleChartView: CircleChartView!
    
    let paymentCategories = ["食品", "雑費", "日用品", "家賃", "光熱費", "通信費"]
    
    // 色と数字はDBから持ってくるようにする
    // 色とかはランダムで指定されるようにする
    override func viewDidLoad() {
        super.viewDidLoad()
        
        circleChartView.configure(
            partInfos: [
                .init(value: 100, color: .red),
                .init(value: 50, color: .blue),
                .init(value: 30, color: .yellow),
                .init(value: 25, color: .green),
                .init(value: 5, color: .cyan),
            ])

    }
    
    @IBAction func calenderBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "calenderSegue", sender: nil)
    }
    
    // セクションの中のセルの数を返す
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return paymentCategories.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell:UICollectionViewCell = collectionView.dequeueReusableCell(withReuseIdentifier: "circleDetail", for: indexPath)
        
        let label = cell.contentView.viewWithTag(1) as! UILabel
        label.text = paymentCategories[indexPath.row]
        
        return cell
    }
    
}

struct PartInfo {
    let value: Float
    let color: UIColor
}

@IBDesignable
class CircleChartView: UIView {
    private var partInfos: [PartInfo] = []
    
    // storyboard上に表示する -> 後で削除
    override func prepareForInterfaceBuilder() {
        configure(
            partInfos: [
                .init(value: 100, color: .red),
                .init(value: 50, color: .blue),
                .init(value: 30, color: .yellow),
                .init(value: 25, color: .green),
                .init(value: 5, color: .cyan),
            ])
    }
    
    func configure(partInfos: [PartInfo]) {
        self.partInfos = partInfos
        setNeedsDisplay()
    }
    
    override func draw(_ rect: CGRect) {
        let context = UIGraphicsGetCurrentContext()
        
        let radius: CGFloat = 100
        let margin: CGFloat = 35
        let center = CGPoint(
            x: radius + margin + 70,
            y: radius + margin
        )
        
        func toRadian(degree: Float) -> Float {
            degree / 180 * .pi
        }
        
        // percent: 0.0 ~ 1.0
        func toDegree(percent: Float) -> Float {
            percent * 360
        }
        
        func drawPart(startParcent: Float,
                      endPercent: Float,
                      fillColor: UIColor) {
            context?.setStrokeColor(UIColor.black.cgColor)
            context?.setFillColor(fillColor.cgColor)
            let path = UIBezierPath()
            
            path.lineWidth = 1
            
            path.addArc(
                withCenter: center,
                radius: radius,
                startAngle: CGFloat(toRadian(degree: toDegree(percent: startParcent) - 90)),
                endAngle: CGFloat(toRadian(degree: toDegree(percent: endPercent) - 90)),
                clockwise: true
            )
            
            path.addLine(to: center)
            
            path.close()
            path.stroke()
            path.fill()
            
        }
        
        
        let valueTotal = partInfos.map(\.value).reduce(0, +)
        let percentAndColorList = partInfos.map {
            return(
                percent: $0.value / valueTotal,
                color: $0.color
            )
        }
        
        var startPercent: Float = 0
        percentAndColorList.forEach {
            drawPart(
                startParcent: startPercent,
                endPercent: startPercent + $0.percent,
                fillColor: $0.color
            )
            startPercent += $0.percent
            
        }
        
    }
}
