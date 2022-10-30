//
//  DishLandscapeCollectionViewCell.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 30.10.2022.
//

import UIKit

class DishLandscapeCollectionViewCell: UICollectionViewCell {
    
    static let identifier = String(describing: DishLandscapeCollectionViewCell.self)
    
    
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var descLabel: UILabel!
    @IBOutlet weak var titleLabel: UILabel!
    
    func setup(dish: Dish) {
        dishImageView.image = dish.image
        titleLabel.text = dish.name
        descLabel.text = dish.description
    }
   
    @IBAction func AddBtn(_ sender: UIButton) {
    }
    

}
