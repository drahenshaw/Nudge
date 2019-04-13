//
//  LoginVC.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        emailField.delegate = self
        passwordField.delegate = self
    }
    

    @IBAction func SignInPressed(_ sender: Any) {
        if emailField.text != nil && passwordField.text != nil {
            AuthService.instance.LoginUser(withEmail: emailField.text!, andPassword: passwordField.text!) { (success, loginError) in
                if success
                {
                    self.dismiss(animated: true, completion: nil)
                } else {
                    print(String(describing: loginError?.localizedDescription))
                }
                
                AuthService.instance.RegisterUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, userCreationComplete: { ( success, registerError ) in
                    if success
                    {
                        AuthService.instance.LoginUser(withEmail: self.emailField.text!, andPassword: self.passwordField.text!, loginComplete: { (success, nil) in
                            self.dismiss(animated: true, completion: nil)
                            print("Successfully registered new user")
                            })
                    } else {
                        print(String(describing: registerError?.localizedDescription))
                    }
                })
            }
        }
    }
    
    //TODO: Close Button
}

extension LoginVC: UITextFieldDelegate {}
