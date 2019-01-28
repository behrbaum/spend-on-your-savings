//
//  ViewController.swift
//  spend_to_save
//
//  Created by OIDUser on 11/6/18.
//  Copyright © 2018 OIDUser. All rights reserved.
//

import UIKit
import AWSAuthCore
import AWSAuthUI

class ViewController: UIViewController {
    
    @IBOutlet weak var createAccountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // Pad and round the 'Create Account' Button
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
        
        if !AWSSignInManager.sharedInstance().isLoggedIn {
//            AWSAuthUIViewController
//                .presentViewController(with: self.navigationController!,
//                                       configuration: nil,
//                                       completionHandler: { (provider: AWSSignInProvider, error: Error?) in
//                                        if error != nil {
//                                            print("Error occurred: \(String(describing: error))")
//                                        } else {
//                                            // Sign in successful.
//                                        }
//                })
        }
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        print("login button pressed")
    }
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        print("create account button pressed")
    }
    
}

