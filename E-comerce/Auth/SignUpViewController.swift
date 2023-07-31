//
//  SignUpViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 23/07/2023.
//

import UIKit
import FirebaseAuth
class SignUpViewController: UIViewController {
       var delegate :MyProtocol?
    
    @IBOutlet weak var UserName: UITextField!
    

    @IBOutlet weak var EmailUser: UITextField!
    

    @IBOutlet weak var PasswordUser: UITextField!
    
    
    @IBOutlet weak var LoginUser: UIButton!


    @IBOutlet weak var AlarmUser: UILabel!
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        LoginUser.addTarget(self, action:#selector(didTapButton), for: .touchUpInside)
         
    }
    @objc private func didTapButton(){
        
        let email = EmailUser.text
        let password = PasswordUser.text
        let userName = UserName.text
        if(email!.isEmpty && ((password?.isEmpty) != nil) && ((userName?.isEmpty) != nil)){
              AlarmUser.text = "complete data please"
           }
          else{
            let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "startId") as!StartViewController
            navigationController?.pushViewController(vc, animated: true)
              navigationController?.navigationBar.isHidden = true
              delegate?.userProfile(myEmail: EmailUser.text!, myuser: UserName.text!)
         }
        
        
    }
    override func viewDidAppear(_ animated: Bool) {
        EmailUser.becomeFirstResponder()
        
    }

}
