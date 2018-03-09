//
//  SearchUsers.swift
//  MUnchMates
//
//  Created by Michael Ulrich on 12/14/17.
//  Copyright © 2017 Michael Ulrich. All rights reserved.
//

import Foundation
import Firebase

struct SearchUsers {
    let firstName: String
    let lastName: String
    let mealPlan: Bool
    let mateType: String
    let college: String
    let uid: String
    let ref: DatabaseReference?
    
    init() {
        self.firstName = " "
        self.lastName = " "
        self.mealPlan = true
        self.mateType = " "
        self.college = " "
        self.uid = " "
        self.ref = nil
    }
    
    init(firstName: String, lastName: String, mealPlan: Bool,
         mateType: String, college:String, uid:String){//, imgProfilePic: UIImageView) {
        self.firstName = firstName
        self.lastName = lastName
        self.mealPlan = mealPlan
        self.mateType = mateType
        self.college = college
        self.uid = uid
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        firstName = snapshotValue["firstName"] as! String
        lastName = snapshotValue["lastName"] as! String
        mealPlan = (snapshotValue["mealPlan"] as? Bool)!
        mateType = snapshotValue["mateType"] as! String
        college = snapshotValue["college"] as! String
        uid = snapshotValue["uid"] as! String
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "firstName": firstName as Any,
            "lastName": lastName as Any,
            "mealPlan": mealPlan as Any,
            "mateType": mateType as Any,
            "college": college as Any,
            "uid": uid as Any
        ]
    }
}