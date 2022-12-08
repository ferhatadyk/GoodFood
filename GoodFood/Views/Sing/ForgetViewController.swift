//
//  ForgetViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit

class ForgetViewController: UIViewController {
    
    
    // MARK: -outlets
    @IBOutlet var forgetEmail: UITextField!
    @IBOutlet var forgetNewPassword: UITextField!
    @IBOutlet var forgetAgainPassword: UITextField!
    
    // MARK: -lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
        
    }
    // MARK: -functions
    @objc func keyboardSecret() {
        view.endEditing(true)
    }
    
    // MARK: -button
    @IBAction func confirmClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toForgetToSignIn", sender: nil)
    }
}
