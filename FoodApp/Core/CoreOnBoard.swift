//
//  CoreOnBoard.swift
//  FoodApp
//
//  Created by Soda on 4/2/21.
//

import Foundation


class Core {
    
    static let Shared = Core()
    
    
    func isNewUser() ->Bool {
        
        return !UserDefaults.standard.bool(forKey: "NewUser22")
    }
    
    func notNewUser() {
        
        UserDefaults.standard.set(true, forKey: "NewUser22")
    }
    
}
