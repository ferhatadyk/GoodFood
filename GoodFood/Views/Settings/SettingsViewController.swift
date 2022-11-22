//
//  SettingsViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit
import Firebase

class SettingsViewController: UIViewController {
    let data = ["Hesabım","Ödeme yöntemi ","Adres ","Sıkça Sorulan Sorular","Çıkış yap"]
    var FData: [String]!

    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        FData = data
       tableView.delegate = self
        tableView.dataSource = self
        
    }
    
}


extension SettingsViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return FData.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = FData[indexPath.row]
        return cell
    }
    
   
    
}
