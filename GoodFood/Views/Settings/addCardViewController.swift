//
//  addCardViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 29.11.2022.
//

import UIKit

class addCardViewController: UIViewController {

    
    @IBOutlet weak var cardNoTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var cardName: UITextField!
    @IBOutlet weak var cvvTextField: UITextField!
    
    
    
    
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

       
    }
    
    
    
    @IBAction func fastPayBtn(_ sender: UISwitch) {
    }
    
    
    @IBAction func addNewCardBtn(_ sender: UIButton) {
    }
}
