//
//  ViewController.swift
//  KVOSwift
//
//  Created by Ju on 2020/3/15.
//  Copyright © 2020 Ju. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    private var account: Account!
    private var person: Person!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        addButton();
        
        account = Account()
        person = Person(account: account)
    }
    
    private func addButton() {
        let bt = UIButton(frame: CGRect(x: 100, y: 100, width: 100, height: 100))
        bt.setTitle("Update", for: .normal)
        bt.setTitleColor(.red, for: .normal)
        bt.addTarget(self, action: #selector(updateAction), for: .touchUpInside)
        view.addSubview(bt)
    }
    
    @objc private func updateAction() {
        print("----- updateAction -----")
        print("before update: type = \(type(of: account)), object_getClass = \(String(describing: object_getClass(account)))")
        account.updateBalance()
        print("after update: type = \(type(of: account)), object_getClass = \(String(describing: object_getClass(account)))")
    }


}

