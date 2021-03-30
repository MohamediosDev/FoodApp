//
//  DishModel.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import Foundation

struct DishModel {
    
    
    let id , image , title , discription : String?
    let caliory : Double?
    
    var formateChange:String {
        
        return "\(caliory ?? 0) caliories"
    }
}
