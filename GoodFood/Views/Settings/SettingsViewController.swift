//
//  SettingsViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {
    
   var data = [String]()

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         data = ["Account","Payment Methods","Address ","Log Out"]
      
       tableView.delegate = self
        tableView.dataSource = self
        
        title = "Settings"
    }
    
}


extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = data[indexPath.row]
        return cell
    }
    
   
    
}
