//
//  OrderViewController.swift
//  FoodApp
//
//  Created by Soda on 3/31/21.
//

import UIKit

class OrderViewController: UIViewController {
    

    //MARK: -> Outlet

    @IBOutlet weak var orderTableView: UITableView!
    

    //MARK: -> Properties

    var OrderList:[DishModel] = [
        .init(id: "id1", image: "https://picsum.photos/100/200", title: "pizza", discription: "Nice And Beuti Pizza", caliory: 12.45),
        .init(id: "id2", image: "https://picsum.photos/100/200", title: "indomi", discription: "Nice And Beuti Indomi", caliory: 5.7),
        .init(id: "id3", image: "https://picsum.photos/100/200", title: "Cola", discription: "Nice And Beuti Cola", caliory: 4.4),
        .init(id: "id4", image: "https://picsum.photos/100/200", title: "Kofta", discription: "Nice And Beuti Kofta", caliory: 45),
        .init(id: "id5", image: "https://picsum.photos/100/200", title: "Bashamel", discription: "Nice And Beuti Bashamel", caliory: 12.4),
        .init(id: "id1", image: "https://picsum.photos/100/200", title: "pizza", discription: "Nice And Beuti Pizza", caliory: 12.45),
        .init(id: "id2", image: "https://picsum.photos/100/200", title: "indomi", discription: "Nice And Beuti Indomi", caliory: 5.7),
        .init(id: "id3", image: "https://picsum.photos/100/200", title: "Cola", discription: "Nice And Beuti Cola", caliory: 4.4),
        .init(id: "id4", image: "https://picsum.photos/100/200", title: "Kofta", discription: "Nice And Beuti Kofta", caliory: 45),
        .init(id: "id5", image: "https://picsum.photos/100/200", title: "Bashamel", discription: "Nice And Beuti Bashamel", caliory: 12.4)
        
    ]
    
    //MARK: -> life cycle

    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupTableView()
        setupUI()
    }
    
    
    //MARK: -> Class Methods
    func setupUI() {
        
        title = "Order"
        
    }
    
    
    //MARK: -> IB Actions


    

}
