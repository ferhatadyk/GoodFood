//
//  addAdressViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 29.11.2022.
//

import UIKit
import Firebase
import FirebaseDatabase

class addAdressViewController: UIViewController {

    // MARK: -outlets
    @IBOutlet weak var addressType: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var districtTextField: UITextField!
    @IBOutlet weak var provinceTextField: UITextField!
    
    // MARK: -variables
    let databaseRef = Database.database(url: "https://goodfood-718da-default-rtdb.europe-west1.firebasedatabase.app/").reference()

    
    // MARK: -lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        if FirebaseApp.app() == nil {
             FirebaseApp.configure()
         }
        let keyboardRecognizer = UITapGestureRecognizer(target: self, action: #selector(keyboardSecret))
        view.addGestureRecognizer(keyboardRecognizer)
    }
    
    
    // MARK: -functions
    @objc func keyboardSecret() {
        view.endEditing(true)
    }
    
    // MARK: -button
    @IBAction func addAddressBtn(_ sender: UIButton) {
        
        let addressType = addressType.text!
        let adress = addressTextField.text!
        let district = districtTextField.text!
        let province = provinceTextField.text!
    }
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
}
