//
//  OnBoardViewControllerViewController.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit

class OnBoardViewController: UIViewController {
    
    //MARK:-> outlet
    
    @IBOutlet weak var onBoardCollectionView: UICollectionView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var nextButtonOutlet: UIButton!
    
    //MARK:-> properties
    
    var onBoardSlide:[OnBoardDataModel] = []
    var currentPage = 0 {
        didSet {
            pageController.currentPage = currentPage
            if currentPage == onBoardSlide.count - 1 {
                nextButtonOutlet.setTitle("Get Started", for: .normal)
            }
            else {
                nextButtonOutlet.setTitle("Next", for: .normal)
            }
        }
    }
    
    
    //MARK:-> life Cycle
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        SetupCollectionView()
        assignValueToArray()
        
    }
    
    //MARK:-> class Methods
    
    func assignValueToArray() {
        onBoardSlide = [
            OnBoardDataModel(title: "Delicious Dishes", discreption: "Experience a variety of amazing dishes from different cultures around the world.", images: #imageLiteral(resourceName: "slide2")),
            OnBoardDataModel(title: "World-Class Chefs", discreption: "Our dishes are prepared by only the best.", images:#imageLiteral(resourceName: "slide1")),
            OnBoardDataModel(title: "Instant World-Wide Delivery", discreption: "Your orders will be delivered instantly irrespective of your location around the world.", images: #imageLiteral(resourceName: "slide3"))
        ]
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageController.currentPage = currentPage
    }
    
    
    
    
    //MARK:-> IB Actions
    
    @IBAction func nextButtonTaped(_ sender: Any) {
        
        
        if currentPage == onBoardSlide.count - 1 {
            let storyboard: UIStoryboard = UIStoryboard(name: "Home", bundle: nil)
            let NC = storyboard.instantiateViewController(withIdentifier: "HomeNC") as! UINavigationController
            NC.modalTransitionStyle = .flipHorizontal
            NC.modalPresentationStyle = .fullScreen
            present(NC, animated: true, completion: nil)
            print("Go to Another Page 🚀")
        }
        
        else {
            currentPage += 1
            let indexpath = IndexPath(item: currentPage, section: 0)
            onBoardCollectionView.scrollToItem(at: indexpath, at: .centeredHorizontally, animated: true)
        }
    }
}
