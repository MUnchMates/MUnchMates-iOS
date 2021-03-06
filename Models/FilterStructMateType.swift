//
//  FilterStructMateType.swift
//  MUnchMates
//
//  Created by Michael Ulrich on 2/17/18.
//  Copyright © 2018 Michael Ulrich. All rights reserved.
//

import Foundation
import Firebase

// structs are used to get data to and from a database and pass data between view controllers. the structs in the "Models" folders are used throughout the app.
struct FilterStructMateType {
    let mateTypeName: String?
    let ref: DatabaseReference?
    
    init() {
        self.mateTypeName = ""
        self.ref = nil
    }
    
    init(mateTypeName: String) {
        self.mateTypeName = mateTypeName
        self.ref = nil
    }
    
    init(snapshot: DataSnapshot) {
        let snapshotValue = snapshot.value as! [String: AnyObject]
        mateTypeName = (snapshotValue["mateTypeName"] as? String)!
        ref = snapshot.ref
    }
    
    func toAnyObject() -> Any {
        return [
            "mateTypeName": mateTypeName as Any
        ]
    }
}
