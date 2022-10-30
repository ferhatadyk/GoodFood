//
//  DishPortraitCollectionViewCell.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 29.10.2022.
//

import UIKit

class DishPortraitCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "DishPortraitCollectionViewCell"
    
    
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImageView: UIImageView!
    @IBOutlet weak var fiyatLabel: UILabel!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    func setup(dish: Dish) {
        
        titleLabel.text = dish.name
        dishImageView.image = dish.image
        fiyatLabel.text = dish.formattedPrice
        descriptionLabel.text = dish.description
    }

}
