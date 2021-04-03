//
//  DishDetailViewController.swift
//  FoodApp
//
//  Created by Soda on 3/31/21.
//

import UIKit

class DishDetailViewController: UIViewController {
    
    //MARK:-> Outlet
    
    @IBOutlet weak var dishImage: UIImageView!
    @IBOutlet weak var dishTitleLabel: UILabel!
    @IBOutlet weak var caloryLabel: UILabel!
    @IBOutlet weak var discriptionLabel: UILabel!
    @IBOutlet weak var enterNameTextField: UITextField!
    
    //MARK:-> Properties
    
    var dish:DishModel!
    
    //MARK:-> Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()

        detialView()
    }
    
    //MARK:-> Class Methods
    
    private func detialView() {
        
        dishImage.kf.setImage(with: dish.image?.asURL)
        dishTitleLabel.text = dish.title
        caloryLabel.text = dish.formateChange
        discriptionLabel.text = dish.discription
        
    }
        
        
    
    
    
    
    
    //MARK:-> IBActions
    
    @IBAction func addNameButtonTapped(_ sender: UIButton) {
        
    }
    
    
    
}
