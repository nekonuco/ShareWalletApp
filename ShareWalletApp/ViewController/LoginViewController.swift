//
//  LoginViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class LoginViewController: UIViewController {
    
    @IBOutlet weak var serviceName: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    
    
    @IBAction func loginBtn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "secceedLogin", sender: nil)
    }
    
    



}
