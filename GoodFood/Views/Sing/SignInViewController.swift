//
//  SignInViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 26.10.2022.
//

import UIKit

class SignInViewController: UIViewController {
    
    
    @IBOutlet var signInEmailTxtField: UITextField!
    @IBOutlet var signInPasswordTxtField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
        
    }
    
    
    @objc func keyboardSecret() {
        view.endEditing(true)
        
    }
    
    
    
    
  
    @IBAction func forgetBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "toForget", sender: nil)
    }
    
    
    @IBAction func signInClick(_ sender: UIButton) {
        performSegue(withIdentifier: "toHomeVC", sender: nil)
    }
    
    
    @IBAction func singUpDont(_ sender: UIButton) {
        performSegue(withIdentifier: "toSingUp", sender: nil)
    }
    
}
