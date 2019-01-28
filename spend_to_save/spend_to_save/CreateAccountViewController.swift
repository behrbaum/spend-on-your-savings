//
//  CreateAccountViewController.swift
//  spend_to_save
//
//  Created by Elena Iaconis on 12/6/18.
//  Copyright © 2018 OIDUser. All rights reserved.
//

import UIKit

class CreateAccountViewController: UIViewController {
    
    
    @IBOutlet weak var signUpButton: UIButton!
    //@IBOutlet weak var loginButton: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        let appDelegate = UIApplication.shared.delegate as! AppDelegate
        
        // Pad and round the 'Continue' Button
        signUpButton.layer.cornerRadius = 5
        signUpButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
    }
    @IBAction func signUpButtonPressed(_ sender: Any) {
        // do things
        print("sign up pressed")
    }
    
   
}

