//
//  DishDetailViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 1.11.2022.
//

import UIKit

class DishDetailViewController: UIViewController {

    @IBOutlet weak var dishImageView: UIImageView!
    
    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var priceLabel: UILabel!
    
    @IBOutlet weak var descriptionlbl: UILabel!
    
    @IBOutlet weak var noteTextField: UITextField!
    
    var dish: Dish!
    
    override func viewDidLoad() {
        super.viewDidLoad()

            populatedView()
        
    }
    
    
    private func populatedView() {
        
        dishImageView.image = dish.image
        titleLabel.text = dish.name
        descriptionlbl.text = dish.description
        priceLabel.text = dish.formattedPrice
        
    }
    
    
    @IBAction func addClicked(_ sender: UIButton) {
    }
    
    
}
