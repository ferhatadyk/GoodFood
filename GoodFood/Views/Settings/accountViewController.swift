//
//  accountViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 25.11.2022.
//

import UIKit
import Firebase

class accountViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    @IBAction func accountDeleteBtn(_ sender: UIButton) {
        let alert = UIAlertController(title: "Delete", message: "Account Delete", preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "OK", style: .default, handler: { (UIAlertAction)  in
            do {
                      
                      try Auth.auth().signOut()
                self.performSegue(withIdentifier: "exitToSingIn", sender: nil)
                      
                  } catch {
                  print("Error")
                     
                  }
        }))
        alert.addAction(UIAlertAction(title: "Cancel", style: .cancel, handler: nil))
        self.present(alert, animated: true, completion: nil)
              
          
        
        
    }
        
    }
