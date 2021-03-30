//
//  PopualrCollectionViewCell.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import UIKit
import Kingfisher

class PopualrCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var caliorsLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    
    
    static let cellName =  String(describing: PopualrCollectionViewCell.self)
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setupPopualerCell(dish:DishModel)  {
        titleLabel.text = dish.title
        dishImage.kf.setImage(with: dish.image?.asURL)
        caliorsLabel.text = dish.formateChange
        discriptionLabel.text = dish.discription
    }
    
}
