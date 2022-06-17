//
//  MasterListViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class MasterListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var masterTableView: UITableView!
    
    // cell配列を設定
    let masterServices = ["メンバー", "グループ", "割合登録", "支払カテゴリー登録", "固定支出", "パスワード変更", "未払いメンバー"]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // セルの範囲を設定
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return masterServices.count
    }
    
    // セルの値を設定
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let masterCell: UITableViewCell = tableView.dequeueReusableCell(withIdentifier: "masterCell", for: indexPath)
        masterCell.textLabel!.text = masterServices[indexPath.row]
        
        return masterCell
    }
    
    // セルの選択時
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        
        switch indexPath.row {
        case 0:
            self.performSegue(withIdentifier: "memberListSegue", sender: nil)
        case 1:
            self.performSegue(withIdentifier: "groupListSegue", sender: nil)
        case 2:
            self.performSegue(withIdentifier: "rateRegisterSegue", sender: nil)
        case 3:
            self.performSegue(withIdentifier: "payCategoryListSegue", sender: nil)
        case 4:
            self.performSegue(withIdentifier: "fixPayListSegue", sender: nil)
        case 5:
            self.performSegue(withIdentifier: "passwordChangeSegue", sender: nil)
        case 6:
            self.performSegue(withIdentifier: "memberListSegue", sender: nil)
        default:
            print("エラー処理")
        }
        
    }
    
    
    
    
    


    

}
