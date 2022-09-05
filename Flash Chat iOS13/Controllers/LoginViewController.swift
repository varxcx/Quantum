//
//  LoginViewController.swift
//  Flash Chat iOS13
//


//import UIKit
//
//class LoginViewController: UIViewController {
//
//    @IBOutlet weak var emailTextfield: UITextField!
//    @IBOutlet weak var passwordTextfield: UITextField!
//
//
//    @IBAction func loginPressed(_ sender: UIButton) {
//    }
//
//}

import UIKit
import FirebaseCore
import FirebaseAuth
import FirebaseFirestore

// Add this to the body
class LoginViewController: UIViewController {
    
    @IBOutlet weak var emailTextfield: UITextField!
    @IBOutlet weak var passwordTextfield: UITextField!


       @IBAction func loginPressed(_ sender: UIButton) {
           if let email = emailTextfield.text, let password = passwordTextfield.text{
           Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
               if let e = error {
                   print(e)
               }
               else{
                   self.performSegue(withIdentifier: "LoginToChat", sender: self)
               }
           }
           }
      }

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
}

}
