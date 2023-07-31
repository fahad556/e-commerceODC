//
//  ProfileViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//

import UIKit

class ProfileViewController: UIViewController,MyProtocol {
     func userProfile(myEmail: String, myuser: String) {
         UserName.text = myuser
          EmailUser.text = myEmail
       }
    

    @IBOutlet weak var UserName: UILabel!
    
    @IBOutlet weak var EmailUser: UILabel!
    
    let userData = SignUpViewController()
    
    override func viewDidLoad() {
        super.viewDidLoad()
          userData.delegate = self
        // Do any additional setup after loading the view.
    }
    

 

}
