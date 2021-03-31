//
//  OrderViewController+Extetions.swift
//  FoodApp
//
//  Created by Soda on 3/31/21.
//

import UIKit

extension OrderViewController  : UITableViewDelegate , UITableViewDataSource{
    
    
    func setupTableView() {
        
        orderTableView.delegate = self
        orderTableView.dataSource = self
        registerNib()
    }
    
    func registerNib() {
        orderTableView.registerNib(cell: OrderTableViewCell.self)
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return OrderList.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = orderTableView.dequeue(index: indexPath) as OrderTableViewCell
        cell.configureCell(dish: OrderList[indexPath.row])
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, willDisplay cell: UITableViewCell, forRowAt indexPath: IndexPath) {
        
//        let rotationtransForm = CATransform3DTranslate(CATransform3DIdentity, -800, 100, 0)
//        cell.layer.transform = rotationtransForm
//        UIView.animate(withDuration: 0.3) {cell.layer.transform = CATransform3DIdentity}
        cell.alpha = 0
        UIView.animate(withDuration: 0.5) {
            cell.alpha = 1
        }
    }
    
    
}
