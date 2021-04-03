//
//  CardViews.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import UIKit

class CardView: UIView {
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupView()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder:coder)
        setupView()
    }
    
    
    private func setupView() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOffset = .zero
        layer.cornerRadius = 10
        cornerRadius = 10
        layer.shadowOpacity = 0.1
    }

}


