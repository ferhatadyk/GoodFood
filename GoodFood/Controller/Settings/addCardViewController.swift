//
//  addCardViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 29.11.2022.
//

import UIKit

class addCardViewController: UIViewController {

    // MARK: -outlets
    @IBOutlet weak var cardNoTextField: UITextField!
    @IBOutlet weak var dateTextField: UITextField!
    @IBOutlet weak var cardName: UITextField!
    @IBOutlet weak var cvvTextField: UITextField!
    
    
    // MARK: -lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: -button
    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func fastPayBtn(_ sender: UISwitch) {
    }
    
    @IBAction func addNewCardBtn(_ sender: UIButton) {
    }
    
}
