//
//  OrderTableViewCell.swift
//  FoodApp
//
//  Created by Soda on 3/31/21.
//

import UIKit

class OrderTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        dishImage.layer.cornerRadius = 10
    }
    
    func configureCell(dish:DishModel) {
        dishImage.kf.setImage(with: dish.image?.asURL)
        titleLabel.text = dish.title
        discriptionLabel.text = dish.discription
        discriptionLabel.text = dish.discription
    }
}
