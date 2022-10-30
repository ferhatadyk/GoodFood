//
//  CategoryCollectionViewCell.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 28.10.2022.
//

import UIKit
import Kingfisher
import Firebase

class CategoryCollectionViewCell: UICollectionViewCell {

    
    static let identifier = String(describing: CategoryCollectionViewCell.self)
    
    @IBOutlet var categoryImageView: UIImageView!
    
    @IBOutlet var categoryTitleLabel: UILabel!
    
    
    func setup(category: DishCategory) {
        categoryTitleLabel.text = category.name
        categoryImageView.image = category.image
        
    }
}


