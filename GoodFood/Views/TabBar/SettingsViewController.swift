//
//  SettingsViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    @IBAction func exitClicked(_ sender: UIButton) {
        
        
        
        do {
            
            try Auth.auth().signOut()
            performSegue(withIdentifier: "exitToSingIn", sender: nil)
            
        } catch {
        print("Error")
           
        }
        
        
        
       
    }
    
}
