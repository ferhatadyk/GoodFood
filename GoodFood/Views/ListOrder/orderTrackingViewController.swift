//
//  orderTrackingViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 25.11.2022.
//

import UIKit

class orderTrackingViewController: UIViewController {

    @IBAction func close(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    
    @IBAction func backHome(_ sender: UIButton) {
        performSegue(withIdentifier: "backHomeVC", sender: nil)
    }
    
    
    @IBAction func liveOrderBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "liveOrderTracking", sender: nil)
    }
    
    @IBAction func supportBtn(_ sender: UIButton) {
        performSegue(withIdentifier: "HelpingVC", sender: nil)
    }
    
    
}
