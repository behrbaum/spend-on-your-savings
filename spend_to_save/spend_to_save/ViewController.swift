//
//  ViewController.swift
//  spend_to_save
//
//  Created by OIDUser on 11/6/18.
//  Copyright © 2018 OIDUser. All rights reserved.
//

import UIKit
import AWSAppSync

class ViewController: UIViewController {

    var appSyncClient: AWSAppSyncClient?
    
    @IBOutlet weak var createAccountButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        
        // Pad and round the 'Create Account' Button
        createAccountButton.layer.cornerRadius = 5
        createAccountButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        runMutation()
        print("login button pressed")
    }
    
    @IBAction func createAccountButtonPressed(_ sender: Any) {
        runMutation()
        print("create account button pressed")
    }
    
    func runMutation(){
        let mutationInput = CreateTodoInput(name: "Use AppSync", description:"Realtime and Offline")
        appSyncClient?.perform(mutation: CreateTodoMutation(input: mutationInput)) { (result, error) in
            if let error = error as? AWSAppSyncClientError {
                print("Error occurred: \(error.localizedDescription )")
            }
            if let resultError = result?.errors {
                print("Error saving the item on server: \(resultError)")
                return
            }
        }
    }
}

