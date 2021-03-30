//
//  UIView+Extentions.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit


extension UIView {
    
    @IBInspectable var cornerRadius : CGFloat {
        
        get{ return cornerRadius}
        set{
            
            self.layer.cornerRadius = newValue
        }
    }
}
