//
//  StartViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 31/07/2023.
//

import UIKit

class StartViewController: UIViewController {

    @IBAction func MoveTabBar(_ sender: Any) {
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "MainTabBar") as!TabBarView
        navigationController?.pushViewController(vc, animated: true)
        navigationController?.navigationBar.isHidden = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
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
