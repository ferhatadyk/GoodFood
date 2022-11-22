//
//  SearchViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit

class SearchViewController: UIViewController {
    
    let data = ["Tonno Pizza", "Islak Hamburger", "Sushi", "Fındık Lahmacun","Karışık Pizza","Chessburger","Midye","Tavuklu Cheddarlı Salata","Filtre Kahve","Soda"]
    var filteredData: [String]!

    @IBOutlet weak var searchBar: UISearchBar!
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        filteredData = data

        tableView.delegate = self
        tableView.dataSource = self
        searchBar.delegate = self
    }
    

    
}

extension SearchViewController: UITableViewDelegate, UITableViewDataSource{
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return filteredData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        cell.textLabel?.text = filteredData[indexPath.row]
        return cell
    }
    
   
    
}
extension SearchViewController: UISearchBarDelegate {
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        filteredData = []
        if searchText == "" {
            filteredData = data
        }
        
        for word  in data  {
            if word.uppercased().contains(searchText.uppercased()) {
                filteredData.append(word)
            }
        }
        tableView.reloadData()
    }
}
