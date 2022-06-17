//
//  GroupSelectorViewController.swift
//  ShareWalletApp
//
//  Created by 野辺翔太 on 2022/06/18.
//

import UIKit

class GroupSelectorViewController: UIViewController {

    @IBOutlet weak var serviceName: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewWillAppear(_ animated: Bool) {
        // navigationBarの非表示
        navigationController?.setNavigationBarHidden(true, animated: false)
    }
    
    
    @IBAction func top(_ sender: Any) {
        
        self.performSegue(withIdentifier: "topSegue", sender: nil)
    }
    
    @IBAction func regist(_ sender: Any) {
        
        self.performSegue(withIdentifier: "groupRegisterSegue", sender: nil)
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
