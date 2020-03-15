//
//  Account.swift
//  Run
//
//  Created by Ju on 2020/3/15.
//  Copyright © 2020 Ju. All rights reserved.
//

import UIKit

class Account: NSObject {
    
    // 一、@objc应用于函数是为了能够让函数表达为 #selector;
    // 二、@objc应用于变量是为了能够让变量表达为keypath字符串，进而使用kvc功能。
    // 三、@objc dynamic应用于变量是为了让变量能够使用kvo机制。
    
    /*
     Here’s the least you need to remember:
     
     1.@objc makes things visible to Objective-C code. You might need this for setting up target/action on buttons and gesture recognizers.
     2.dynamic opts into dynamic dispatch. You might need this for KVO support or if you‘re doing method swizzling.
     3.The only way to do dynamic dispatch currently is through the Objective-C runtime, so you must add @objc if you use dynamic.
     */

    // https://developer.apple.com/documentation/swift/using_objective-c_runtime_features_in_swift
    // @objc dynamic, 不加 objc 发送通知到时候会崩溃, 不加 dynamic 会不调用通知
    @objc dynamic var balance = 0
    
    func updateBalance() {
        let rand = arc4random() % 10000 + 100
        balance = Int(rand)
    }

}
