//
//  LoginViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class LoginViewController: UIViewController {
        
    /* 定義 */
    //ロゴイメージ
    @IBOutlet weak var appTrademark: UIImageView!
    //ログインボタン
    @IBOutlet weak var loginBtn: UIButton!
    //パスワードリセット
    @IBOutlet weak var passwordReset: UIButton!
    
    //NSAttributedString
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    //** 仮のデザイン設定なので、自由に変えてください　by tajima **//
        //ログインボタンのデザイン設定
        loginBtn.layer.cornerRadius = 20
        
        //パスワードリセットボタンのデザイン設定
        passwordReset.setTitle("パスワードを忘れた方はこちら", for: .normal)
        
    }
    
    //ログインボタン押下時
    @IBAction func loginBtn(_ sender: Any) {
        self.performSegue(withIdentifier: "secceedLogin", sender: nil)
    }
    
    //パスワードリセットボタン押下時
    @IBAction func passwordReset(_ sender: Any) {
        self.performSegue(withIdentifier: "passwordResetSegue", sender: nil)
    }
}
