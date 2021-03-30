//
//  HomeViewController+Extenions.swift
//  FoodApp
//
//  Created by Soda on 3/30/21.
//

import UIKit


extension HomeViewController : UICollectionViewDelegate , UICollectionViewDataSource,UICollectionViewDelegateFlowLayout {
    
    func setupCollectionView(collection:UICollectionView) {
        collection.delegate = self
        collection.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        switch collectionView {
        case catogeryCollectionView:
            return catogeries.count
        case popualrCollectionView:
            return popualr.count
        default:return 0
        }
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        switch collectionView {
        case catogeryCollectionView:
            let cell = catogeryCollectionView.dequeue(index: indexPath) as FoodCatogeryCollectionViewCell

            cell.ConfigureCatogeryCell(catogeries[indexPath.item])
            return cell
            
        case popualrCollectionView:
            let cell = popualrCollectionView.dequeue(index: indexPath) as PopualrCollectionViewCell
            
            cell.setupPopualerCell(dish: popualr[indexPath.item])
            return cell
        default:return UICollectionViewCell()
            
        }
    }
    
//    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        return CGSize(width: 209, height: 350)
//    }
    
    
    
    
    
}
