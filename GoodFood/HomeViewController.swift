//
//  HomeViewController.swift
//  GoodFood
//
//  Created by Ferhat Adiyeke on 27.10.2022.
//

import UIKit

class HomeViewController: UIViewController {

    @IBOutlet var categoryCollectionView: UICollectionView!
    
    @IBOutlet weak var popularCollectionsView: UICollectionView!
    
    
    @IBOutlet weak var allMealsCollectionView: UICollectionView!
    
    var categories: [DishCategory] = [
        .init(id: "id1", name: "Pizza", image: #imageLiteral(resourceName: "pizzeria") ),
        .init(id: "id1", name: "Hamburger", image: #imageLiteral(resourceName: "burger2")),
        .init(id: "id1", name: "Turkish", image: #imageLiteral(resourceName: "turk")),
        .init(id: "id1", name: "Coffee", image: #imageLiteral(resourceName: "coffee")),
        .init(id: "id1", name: "Cake", image: #imageLiteral(resourceName: "kebap")),
        .init(id: "id1", name: "Sushi", image: #imageLiteral(resourceName: "kebap"))
        
    ]
    
    var populars: [Dish] = [
        .init(id: "id1", name: "Pizza", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75),
        .init(id: "id1", name: "Hamburger", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 45),
        .init(id: "id1", name: "Lahmacun", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 67),
        .init(id: "id1", name: "Coffee", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 34)

    
    
    ]
        
    var specials: [Dish] = [
        .init(id: "id1", name: "Pizza", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 75),
        .init(id: "id1", name: "Hamburger", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 45),
        .init(id: "id1", name: "Lahmacun", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 67),
        .init(id: "id1", name: "Coffee", description: "Ücretsiz teslimat", image: #imageLiteral(resourceName: "pizzeria"), price: 34)
    ]
    
    
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
       

    registerCells()
        
    }
    
    
    private func registerCells() {
        categoryCollectionView.register(UINib(nibName: CategoryCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: CategoryCollectionViewCell.identifier)
        
        popularCollectionsView.register(UINib(nibName: DishPortraitCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishPortraitCollectionViewCell.identifier)
        
        allMealsCollectionView.register(UINib(nibName: DishLandscapeCollectionViewCell.identifier, bundle: nil), forCellWithReuseIdentifier: DishLandscapeCollectionViewCell.identifier)
        
        
    }
    
    
    
   
   

}

extension HomeViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
            
        case categoryCollectionView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: CategoryCollectionViewCell.identifier, for: indexPath) as! CategoryCollectionViewCell
            cell.setup(category: categories[indexPath.row])
            
            return cell
        case popularCollectionsView:
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: DishPortraitCollectionViewCell.identifier, for: indexPath) as! DishPortraitCollectionViewCell
            cell.setup(dish: populars[indexPath.row])
            
            return cell
        case allMealsCollectionView:
            let cell =  collectionView.dequeueReusableCell(withReuseIdentifier: DishLandscapeCollectionViewCell.identifier, for: indexPath) as! DishLandscapeCollectionViewCell
            cell.setup(dish: specials[indexPath.row])
            return cell
        default: return UICollectionViewCell()
        }
        
       
     }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
            
        case categoryCollectionView:
            return categories.count
        case popularCollectionsView:
            return populars.count
        case allMealsCollectionView:
            return specials.count
            
        default: return 0
        }
       
        
    }
    
    
}
