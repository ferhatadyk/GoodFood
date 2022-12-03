//
//  orderLastDetailsViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 25.11.2022.
//

import UIKit

class orderLastDetailsViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

   
    
    
    
    @IBAction func adressEdit(_ sender: UIButton) {
        performSegue(withIdentifier: "deliveryAddressVC", sender: nil)
    }
    
    @IBAction func temazsızSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func cardAddBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "paymentChangeVC", sender: nil)
    }
    
    @IBAction func agreementSwitch(_ sender: UISwitch) {
    }
    
    @IBAction func createOrder(_ sender: UIButton) {
        performSegue(withIdentifier: "TrackingVC", sender: nil)
    }
    
}
