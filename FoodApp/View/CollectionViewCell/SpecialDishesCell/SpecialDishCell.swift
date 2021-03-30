//
//  SpecialDishCell.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import UIKit
import Kingfisher

class SpecialDishCell: UICollectionViewCell {
    
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var calioryLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func configureCell(dish:DishModel) {
        
        dishImage.kf.setImage(with: dish.image?.asURL)
        titleLabel.text = dish.title
        discriptionLabel.text = dish.discription
        calioryLabel.text = dish.formateChange
    }
}
