//
//  AuthService.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import Foundation
import Firebase
import FirebaseAuth

class AuthService
{
    static let instance = AuthService()
    
    func RegisterUser(withEmail email: String, andPassword password: String, userCreationComplete: @escaping (_ status: Bool, _ error: Error?)->())
    {
        Auth.auth().createUser(withEmail: email, password: password, completion: { (user, error) in
            guard let user = user else {
                userCreationComplete(false, error)
                return
            }
            
            let userData = ["provider": user.user.providerID, "email": user.user.email]
            DataService.instance.CreateDBUser(uid: user.user.uid, userData: userData)
            userCreationComplete(true, nil)
        })
    }
    
    func LoginUser(withEmail email: String, andPassword password: String, loginComplete: @escaping (_ status: Bool, _ error: Error?)->())
    {
        Auth.auth().signIn(withEmail: email, password: password) { (AuthDataResult, error) in
            if error != nil {
                loginComplete(false, error)
                return
            }
            loginComplete(true, nil)
        }
    }
}
