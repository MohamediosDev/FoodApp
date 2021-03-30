//
//  StringExtentions.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import Foundation

extension String {

    var asURL:URL? {
        return URL(string: self)
    }

}
