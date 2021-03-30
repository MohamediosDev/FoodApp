//
//  FoodCatogeryCollectionViewCell.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import UIKit
import Kingfisher

class FoodCatogeryCollectionViewCell: UICollectionViewCell {

    
    @IBOutlet weak var catogeryImage: UIImageView!
    @IBOutlet weak var catogeryTitle: UILabel!
    
    static let idintifier = String(describing: FoodCatogeryCollectionViewCell.self)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func ConfigureCatogeryCell(_ catogery:DishCatogeryModel) {
        catogeryTitle.text = catogery.name
        catogeryImage.kf.setImage(with: catogery.image.asURL)
        catogeryImage.kf.indicatorType = .activity
    }
}
