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
    
    @IBOutlet weak var signUpButton: UIButton!
    //@IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // Pad and round the 'Create Account' Button
        signUpButton.layer.cornerRadius = 5
        signUpButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
    }
    @IBAction func signUpButtonPressed(_ sender: Any) {
        // do things
        print("sign up pressed")
    }
    
   
}

