//
//  LogInViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 23/07/2023.
//

import UIKit
import FirebaseAuth
class LogInViewController: UIViewController {


    @IBOutlet weak var EmailuSER: UITextField!
    
    @IBOutlet weak var PasswordUser: UITextField!
    
    @IBOutlet weak var AlartUser: UILabel!
    
    
    @IBAction func NaveCteate(_ sender: Any) {
       
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "SignUp") as!SignUpViewController
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
    
    @IBOutlet weak var LogIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        LogIn.addTarget(self, action:#selector(didTapButton), for: .touchUpInside)
        // Do any additional setup after loading the view.
    }
    

    @objc private func didTapButton(){
        print("Hallo")
        guard let email = EmailuSER.text,!email.isEmpty,
              let password = PasswordUser.text,password.isEmpty else{
            AlartUser.text = ("Please SignUp or Login")
            return
        }
        FirebaseAuth.Auth.auth().signIn(withEmail: email, password: password, completion: { [weak self] result,error in
            guard let strongself = self else{
                return
            }
            guard error == nil else{
                strongself.showCreate()
                return
            }
            print("You have signed in")
        })

    }
    func showCreate(){
        let alert = UIAlertController(title: "Create Account", message: "whould create", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "continue", style: .default,handler: {_ in
            
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel,handler: {_ in
            
        }))
        present(alert, animated: true)
    }
}
