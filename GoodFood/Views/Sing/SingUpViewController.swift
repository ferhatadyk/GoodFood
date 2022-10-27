//
//  SingUpViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 26.10.2022.
//

import UIKit

class SingUpViewController: UIViewController {
    
    
    
    @IBOutlet var nameSurnameTxtField: UITextField!
    @IBOutlet var singUpEmailTextField: UITextField!
    @IBOutlet var singUpAdressTextfield: UITextField!
    @IBOutlet var singUpPasswordTextField: UITextField!
    
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
    }
    

    @objc func keyboardSecret() {
        view.endEditing(true)
        
    }
    
    
    @IBAction func singUpClicked(_ sender: UIButton) {
        performSegue(withIdentifier: "toAlreadySingIn", sender: nil)
    }
    
    @IBAction func toSingInDont(_ sender: UIButton) {
        performSegue(withIdentifier: "toAlreadySingIn", sender: nil)
    }
    
}
