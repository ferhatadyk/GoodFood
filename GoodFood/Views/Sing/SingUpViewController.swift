//
//  SingUpViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 26.10.2022.
//

import UIKit

class SingUpViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
    }
    

    @objc func keyboardSecret() {
        view.endEditing(true)
        
    }

    @IBAction func toSingInDont(_ sender: UIButton) {
        performSegue(withIdentifier: "toAlreadySingIn", sender: nil)
    }
    
}
