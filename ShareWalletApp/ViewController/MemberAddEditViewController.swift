//
//  MemberAddEditViewController.swift
//  ShareWalletApp
//
//  Created by 田島さゆり on 2022/07/10.
//

import UIKit

class MemberAddEditViewController: UIViewController, UIAdaptivePresentationControllerDelegate {
    
    
    
    
    
    /*初期表示*/
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //モーダルをスワイプで閉じるのを抑制
        isModalInPresentation = true
        
    }
    
    /*キャンセルボタン押下*/
    @IBAction func Cancel(_ sender: Any) {
        //モーダルを閉じる
        self.dismiss(animated: true, completion: nil)
    }
    
   
    
}
