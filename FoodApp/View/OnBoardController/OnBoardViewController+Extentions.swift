//
//  OnBoardViewController+Extentions.swift
//  FoodApp
//
//  Created by Soda on 3/29/21.
//

import UIKit


extension OnBoardViewController:UICollectionViewDelegate , UICollectionViewDataSource , UICollectionViewDelegateFlowLayout {
    
    func SetupCollectionView() {
        onBoardCollectionView.delegate = self
        onBoardCollectionView.dataSource = self
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return onBoardSlide.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = onBoardCollectionView.dequeueReusableCell(withReuseIdentifier: OnBoardCollectionViewCell.idintfier, for: indexPath) as! OnBoardCollectionViewCell
        cell.ConfigureCell(onBoardSlide[indexPath.item])
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
}
