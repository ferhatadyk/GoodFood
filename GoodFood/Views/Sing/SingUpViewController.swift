//
//  SingUpViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 26.10.2022.
//

import UIKit
import Firebase
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
       
        if nameSurnameTxtField.text != "" && singUpAdressTextfield.text != "" && singUpEmailTextField.text != "" && singUpPasswordTextField.text != "" {
            Auth.auth().createUser(withEmail: singUpEmailTextField.text!, password: singUpPasswordTextField.text!) { (authdataresult, error) in
                if error != nil {
                       
                    self.errorMessage(titleInput: "Error", messageInput: error?.localizedDescription ?? "You got an error please try again.")
                   
                }
                else {
                    self.performSegue(withIdentifier: "doneSingUp", sender: nil)
                }
            }
        }else {
            errorMessage(titleInput: "Error!", messageInput: "Please enter your information.")
                
            
        }
        
        
    }
    
    func errorMessage(titleInput: String, messageInput: String) {
        let alert  = UIAlertController(title: titleInput, message: messageInput, preferredStyle: UIAlertController.Style.alert)
        let OKBtn = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        alert .addAction(OKBtn)
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func toSingInDont(_ sender: UIButton) {
        performSegue(withIdentifier: "toAlreadySingIn", sender: nil)
    }
    
}
