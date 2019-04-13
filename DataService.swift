//
//  DataService.swift
//  Hope
//
//  Created by David Henshaw on 4/13/19.
//  Copyright © 2019 David Henshaw. All rights reserved.
//

import Foundation
import Firebase
import FirebaseDatabase

let DB_BASE_REF = Database.database().reference()


class DataService
{
    // Static Instance to Firebase Reference
    static let instance = DataService()
    
    // Private Versions of DB Children
    private var _REF_BASE = DB_BASE_REF
    private var _REF_USERS = DB_BASE_REF.child("users")
    
    // Property Versions for DB Children
    var REF_BASE: DatabaseReference
    {
        return _REF_BASE
    }
    
    var REF_USERS: DatabaseReference
    {
        return _REF_USERS
    }
    
    // Create Firebase User with User ID, Dictionary <String, Data>
    // Hashable by User ID, Data includes all properties for a user
    func CreateDBUser(uid: String, userData: Dictionary<String, Any>)
    {
        REF_USERS.child(uid).updateChildValues(userData)
    }
    
    // Data Service Methods
    
}
