//
//  PageloginAndSignUpViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 31/07/2023.
//

import UIKit

class PageloginAndSignUpViewController: UIViewController {

    
    
    @IBAction func LogInPage(_ sender: Any) {
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "LogIn") as!LogInViewController
        navigationController?.pushViewController(vc, animated: true)
    }
    
    
    
    @IBAction func SignUpPage(_ sender: Any) {
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "SignUp") as!SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
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
