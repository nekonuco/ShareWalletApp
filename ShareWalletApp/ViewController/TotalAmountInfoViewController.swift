//
//  TotalAmountInfoViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class TotalAmountInfoViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()

    }
    

    @IBAction func calenderBtn(_ sender: Any) {
        
        self.performSegue(withIdentifier: "calenderSegue", sender: nil)
        
    }
}
