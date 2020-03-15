//
//  Person.swift
//  Run
//
//  Created by Ju on 2020/3/15.
//  Copyright © 2020 Ju. All rights reserved.
//

import UIKit

class Person: NSObject {
    
    // @objc 不加 obseervation 会崩溃
    @objc var account: Account
    var obseervation: NSKeyValueObservation?
    
    init(account: Account) {
        self.account = account

        super.init()
        
        obseervation = observe(\.account.balance, options: [.old, .new], changeHandler: { (object, change) in
            print("Account chnaged to old = \(change.oldValue!), new = \(change.newValue!)")
        })
    }

}
