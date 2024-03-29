//
//  ViewController.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit
import UserNotifications

class HomeViewController: UIViewController {
    
    //MARK: -> Outlet
    @IBOutlet weak var catogeryCollectionView: UICollectionView!
    @IBOutlet weak var popualrCollectionView: UICollectionView!
    @IBOutlet weak var specialCollectionView: UICollectionView!
    
    //MARK: -> Properties
    var catogeries:[DishCatogeryModel] = [
        .init(id: "id1", name: "Egypt Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id2", name: "Oman Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id3", name: "jordn Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id4", name: "USA Dishs", image: "https://picsum.photos/100/200"),
        .init(id: "id5", name: "Qanter Dishs", image: "https://picsum.photos/100/200")
    ]
    
    var popualr:[DishModel] = [
        .init(id: "id1", image: "https://picsum.photos/100/200", title: "pizza", discription: "Nice And Beuti Pizza Nice And Beuti Pizza Nice And Beuti Pizza", caliory: 12.45),
        .init(id: "id2", image: "https://picsum.photos/100/200", title: "indomi", discription: "Nice And Beuti Indomi Nice And Beuti Indomi Nice And Beuti Indomi", caliory: 5.7),
        .init(id: "id3", image: "https://picsum.photos/100/200", title: "Cola", discription: "Nice And Beuti Cola Nice And Beuti Cola Nice And Beuti Cola", caliory: 4.4),
        .init(id: "id4", image: "https://picsum.photos/100/200", title: "Kofta", discription: "Nice And Beuti Kofta Nice And Beuti Kofta Nice And Beuti Kofta", caliory: 45),
        .init(id: "id5", image: "https://picsum.photos/100/200", title: "Bashamel", discription: "Nice And Beuti Bashamel Nice And Beuti Bashamel", caliory: 12.4),
    ]
    
    var spiecal:[DishModel] = [
        
        .init(id: "id1", image: "https://picsum.photos/100/200", title: "Batata", discription: "Nice And Beuti Batata Nice And Beuti Batata", caliory: 5.7),
        .init(id: "id2", image: "https://picsum.photos/100/200", title: "Pepsi", discription: "Nice And Beuti Pepsi Nice And Beuti Pepsi Nice And Beuti Pepsi", caliory: 4.4),
        .init(id: "id3", image: "https://picsum.photos/100/200", title: "Mahshey", discription: "Nice And Beuti Mahshey Nice And Beuti Mahshey", caliory: 45),
        .init(id: "id4", image: "https://picsum.photos/100/200", title: "nodels", discription: "Nice And Beuti nodels Nice And Beuti nodels Nice And Beuti nodels", caliory: 12.4),
    ]
    
    //MARK: -> Life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        setupUI()
        addLocalNotifaction()
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        if Core.Shared.isNewUser() {
            let vc = storyboard?.instantiateViewController(withIdentifier: "OnBoardViewController") as! OnBoardViewController
            vc.modalPresentationStyle = .fullScreen
            present(vc, animated: true, completion: nil)
        }
    }
    
    //MARK: -> Class Methods
    
    func setupUI() {

        title = "Talabaty"
        setupCollectionView(collection: catogeryCollectionView)
        setupCollectionView(collection: popualrCollectionView)
        setupCollectionView(collection: specialCollectionView)
        
        catogeryCollectionView.registerNib(cell: FoodCatogeryCollectionViewCell.self)
        popualrCollectionView.registerNib(cell: PopualrCollectionViewCell.self)
        specialCollectionView.registerNib(cell: SpecialDishCell.self)
        
    }
    
    func addLocalNotifaction() {
        
        //Ask Permission
        let centre = UNUserNotificationCenter.current()
        centre.requestAuthorization(options: [.alert , .sound]) { (grant, error) in
            
            if error == nil {
                print("Error: \(error?.localizedDescription ?? "")")
            }
        }
        //Create Notifaction Content
        let content = UNMutableNotificationContent()
        content.title = "HI 🔴"
        content.body = "Come Again To See New Items.🚚🚛"
        content.sound = .default
        
        //Create Notifaction Trigger
        
        let trigger = UNTimeIntervalNotificationTrigger(timeInterval: 7, repeats: false)
        //Create Request
        let uuidString = UUID().uuidString
        let reqeust  = UNNotificationRequest(identifier: uuidString, content: content, trigger: trigger)
        centre.add(reqeust) { (error) in
            
        }
    }
    
    //MARK: -> IB Actions
    
    @IBAction func cartButtonTap(_ sender: UIBarButtonItem) {
        
        let vc = storyboard?.instantiateViewController(withIdentifier: "OrderViewController") as! OrderViewController
        
        navigationController?.pushViewController(vc, animated: true)
        
    }
}

