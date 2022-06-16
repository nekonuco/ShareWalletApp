//
//  TopViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/17.
//

import UIKit

class TopViewController: UIViewController, UITabBarDelegate {
    
    @IBOutlet weak var serviceName: UILabel!
    @IBOutlet weak var tabBar: UITabBarItem!

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func viewWillAppear(_ animated: Bool) {
        
        // navigationBarの非表示
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    
    
    


}
