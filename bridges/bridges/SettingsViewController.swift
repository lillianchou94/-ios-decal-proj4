//
//  SecondViewController.swift
//  bridges
//
//  Created by Lilly Chou on 5/1/16.
//  Copyright © 2016 Lilly Chou. All rights reserved.
//

import UIKit

class SettingsViewController: UIViewController {

    @IBOutlet weak var userName: UITextField!
    @IBOutlet weak var userContact: UITextField!
    @IBOutlet weak var userCommunity: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
//       userName.delegate = self
        
        if let currentUser = currentUser {
            navigationItem.title = currentUser.name
            userName.text   = currentUser.name
            userContact.text = currentUser.contact
                        var comm = currentUser.communities[0]
            var index = 1
            while index < currentUser.communities.count{
                comm += (", " + currentUser.communities[index])
                index += 1
            }
            userCommunity.text = comm
        }
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }



}

