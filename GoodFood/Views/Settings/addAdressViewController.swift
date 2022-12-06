//
//  addAdressViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 29.11.2022.
//

import UIKit

class addAdressViewController: UIViewController {

    
    @IBOutlet weak var addressType: UITextField!
    @IBOutlet weak var addressTextField: UITextField!
    @IBOutlet weak var districtTextField: UITextField!
    @IBOutlet weak var provinceTextField: UITextField!
    
    
    
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    

    @IBAction func addAddressBtn(_ sender: UIButton) {
    }
    
}
