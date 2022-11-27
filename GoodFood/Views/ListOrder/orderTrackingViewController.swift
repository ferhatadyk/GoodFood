//
//  orderTrackingViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 25.11.2022.
//

import UIKit

class orderTrackingViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backHome(_ sender: UIButton) {
        performSegue(withIdentifier: "backHomeVC", sender: nil)
    }
    
}
