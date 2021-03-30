//
//  OnBoardCollectionViewCell.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit

class OnBoardCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var onBoardImage: UIImageView!
    @IBOutlet weak var onBoardTitlelable: UILabel!
    @IBOutlet weak var onBoardDiscriptionLabel: UILabel!
    
    
    static let idintfier = String(describing: OnBoardCollectionViewCell.self)
    
    func ConfigureCell(_ onBoard:OnBoardDataModel) {
        
        onBoardImage.image = onBoard.images
        onBoardTitlelable.text = onBoard.title
        onBoardDiscriptionLabel.text = onBoard.discreption
        
    }
    
}
