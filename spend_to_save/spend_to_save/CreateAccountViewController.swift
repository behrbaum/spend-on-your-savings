//
//  CreateAccountViewController.swift
//  spend_to_save
//
//  Created by Elena Iaconis on 12/6/18.
//  Copyright © 2018 OIDUser. All rights reserved.
//

import UIKit
import AWSAppSync

class CreateAccountViewController: UIViewController {
    
    var appSyncClient: AWSAppSyncClient?
    
    //@IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        // Do any additional setup after loading the view, typically from a nib.
        //loginButton.layer.borderWidth = 1
        //loginButton.layer.borderColor = UIColor.white.cgColor
    }
    
   
}

