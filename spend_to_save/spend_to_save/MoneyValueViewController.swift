//
//  MoneyValueViewController.swift
//  spend_to_save
//
//  Created by OIDUser on 1/29/19.
//  Copyright © 2019 OIDUser. All rights reserved.
//

import UIKit

class MoneyValueViewController: UIViewController {

    @IBOutlet weak var logoutButton: UIButton!
    @IBOutlet weak var plusButton: UIButton!
    
    // Adding a comment to make this different
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Pad and round the 'Logout' Button
        logoutButton.layer.cornerRadius = 5
        logoutButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
        
        // Pad and round the 'Plus' Button
        plusButton.layer.cornerRadius = 5
        plusButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
