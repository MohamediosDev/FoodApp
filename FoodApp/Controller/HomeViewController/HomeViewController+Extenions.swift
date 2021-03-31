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
        case specialCollectionView:
            return spiecal.count
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
            
        case specialCollectionView:
            let cell = specialCollectionView.dequeue(index: indexPath) as SpecialDishCell
            
            cell.configureCell(dish: spiecal[indexPath.item])
            return cell
        default:return UICollectionViewCell()
            
        }
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        
        let cell = collectionView.cellForItem(at: indexPath)
        
        UIView.animate(withDuration: 0.2,animations: {cell?.alpha = 0.5}) {[weak self] (completed) in
         //fade in
        UIView.animate(withDuration: 0.2,animations: {
         //Fade out
        guard let self = self else {return}
        cell?.alpha = 1
        if collectionView == self.catogeryCollectionView {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "DishDetailViewController") as!  DishDetailViewController
        self.navigationController?.pushViewController(vc, animated: true)
            }
        })
    }
}
    
    func collectionView(_ collectionView: UICollectionView, willDisplay cell: UICollectionViewCell, forItemAt indexPath: IndexPath) {
        
        let rotationtransForm = CATransform3DTranslate(CATransform3DIdentity, -800, 100, 0)
        cell.layer.transform = rotationtransForm
        UIView.animate(withDuration: 0.3) {cell.layer.transform = CATransform3DIdentity}
        cell.alpha = 0
        UIView.animate(withDuration: 0.5) {
            cell.alpha = 1
        }
    }
}
