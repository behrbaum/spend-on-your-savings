//
//  AddGoalViewController.swift
//  spend_to_save
//
//  Created by OIDUser on 1/29/19.
//  Copyright © 2019 OIDUser. All rights reserved.
//

import UIKit

class AddGoalViewController: UIViewController {

    @IBOutlet weak var skipButton: UIButton!
    @IBOutlet weak var addGoalButton: UIButton!
    
    // Adding a comment to make this different
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Pad and round the 'Skip' Button
        skipButton.layer.cornerRadius = 5
        skipButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
        
        // Pad and round the 'Add Goal' Button
        addGoalButton.layer.cornerRadius = 5
        addGoalButton.contentEdgeInsets = UIEdgeInsets(top: 10,left: 10,bottom: 7,right: 10)
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
