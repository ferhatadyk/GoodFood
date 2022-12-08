//
//  orderLastDetailsViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 25.11.2022.
//

import UIKit
import Firebase

class orderLastDetailsViewController: UIViewController {
    
    // MARK: -outlets
    @IBOutlet weak var addressLbl: UILabel!
    
    // MARK: -variables
    let databaseRef = Database.database(url: "https://goodfood-718da-default-rtdb.europe-west1.firebasedatabase.app/").reference()

    // MARK: -lifeCycle
    override func viewDidLoad() {
        super.viewDidLoad()
        databaseRef.child("users").queryOrdered(byChild: "uid").queryEqual(toValue: Auth.auth().currentUser!.uid).observeSingleEvent(of: .value)  { (snapshot) in
            for child in snapshot.children{
                let snap = child as! DataSnapshot
                let dict = snap.value as! NSDictionary
                var address = ""
                address += dict["address"] as! String + "\n"
                self.addressLbl.text = address
            }
        }
    }
    
    // MARK: -button
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
