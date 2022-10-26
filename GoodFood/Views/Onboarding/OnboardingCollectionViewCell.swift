//
//  OnboardingCollectionViewCell.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 24.10.2022.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    
    static let identifier = String(describing: OnboardingCollectionViewCell.self)
    
    @IBOutlet var slideImageView: UIImageView!
    @IBOutlet var slideTitle: UILabel!
    @IBOutlet var slideDescription: UILabel!
    
    
    
    func setup(_ slide:OnboardingSlide) {
        slideImageView.image = slide.image
        slideTitle.text = slide.title
        slideDescription.text = slide.description
        
    }
}


