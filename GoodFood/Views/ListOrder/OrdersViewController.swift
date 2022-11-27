//
//  OrdersViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit

class OrdersViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    var orders: [Order] = [
        
        .init(id: "id", name: "Ferhat adiyeke", dish:   .init(id: "id1", name: "Pizza", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75)),
        .init(id: "id", name: "Zeynep adiyeke", dish:   .init(id: "id1", name: "Sushi", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75)),
        .init(id: "id", name: "Eylül adiyeke", dish:   .init(id: "id1", name: "Lahmacun", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75)),
        .init(id: "id", name: "Ahmet adiyeke", dish:   .init(id: "id1", name: "Tonno Pizza", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75))

    
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
registerCells()
        
        title = "Orders"
       
    }
    

    private func registerCells() {
        tableView.register(UINib(nibName: DishListTableViewCell.identifier, bundle: nil), forCellReuseIdentifier: DishListTableViewCell.identifier)
    }

}


extension OrdersViewController: UITableViewDelegate, UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return orders.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: DishListTableViewCell.identifier) as! DishListTableViewCell
        cell .setup(order: orders[indexPath.row])
        return cell
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            orders.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.fade)
        }
            
    }
    
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let controller = DishDetailViewController.instantiate()
        controller.dish = orders[indexPath.row].dish
        
        tabBarController?.present(controller, animated: true, completion: nil)
    }
    
}
