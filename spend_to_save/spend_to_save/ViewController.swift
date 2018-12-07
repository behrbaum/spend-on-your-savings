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
    
    //@IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        appSyncClient = appDelegate.appSyncClient
        // Do any additional setup after loading the view, typically from a nib.
        //loginButton.layer.borderWidth = 1
        //loginButton.layer.borderColor = UIColor.white.cgColor
    }
    
    @IBAction func loginButtonPressed(_ sender: Any) {
        runMutation()
        print("login button pressed")
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

