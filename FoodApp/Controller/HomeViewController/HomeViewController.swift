//
//  ViewController.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit

class HomeViewController: UIViewController {
    
    
    @IBOutlet weak var catogeryCollectionView: UICollectionView!
    @IBOutlet weak var popualrCollectionView: UICollectionView!
    

    var catogeries:[DishCatogeryModel] = [
        .init(id: "id1", name: "Egypt Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Oman Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "jordn Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "USA Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Qanter Dishs", image: "https://picsum.photos/100/200")
    ]
        
    var popualr:[DishModel] = [
        .init(id: "id1", image: "https://picsum.photos/100/200", title: "pizza", discription: "Nice And Beuti Pizza", caliory: 12.45),
        .init(id: "id2", image: "https://picsum.photos/100/200", title: "indomi", discription: "Nice And Beuti Indomi", caliory: 5.7),
        .init(id: "id3", image: "https://picsum.photos/100/200", title: "Cola", discription: "Nice And Beuti Cola", caliory: 4.4),
        .init(id: "id4", image: "https://picsum.photos/100/200", title: "Kofta", discription: "Nice And Beuti Kofta", caliory: 45),
        .init(id: "id5", image: "https://picsum.photos/100/200", title: "Bashamel", discription: "Nice And Beuti Bashamel", caliory: 12.4),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
    }
    
    func setupUI() {
        title = "Talabaty"
        setupCollectionView(collection: catogeryCollectionView)
        setupCollectionView(collection: popualrCollectionView)
     
        catogeryCollectionView.registerNib(cell: FoodCatogeryCollectionViewCell.self)
        popualrCollectionView.registerNib(cell: PopualrCollectionViewCell.self)
        
    }
    

}

