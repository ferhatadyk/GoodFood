//
//  ForgetViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit

class ForgetViewController: UIViewController {
    
    

    @IBOutlet var forgetEmail: UITextField!
    @IBOutlet var forgetNewPassword: UITextField!
    @IBOutlet var forgetAgainPassword: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
        
    }
    
    
    @objc func keyboardSecret() {
        view.endEditing(true)
        
    }
    
    

   
    @IBAction func confirmClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toForgetToSignIn", sender: nil)
        
    }
    

}
