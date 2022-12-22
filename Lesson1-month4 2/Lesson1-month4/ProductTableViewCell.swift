//
//  ProductTableViewCell.swift
//  Lesson1-month4
//
//  Created by Iusupov Ramazan on 19/12/22.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    
//    public static let reuseId3 = String(describing: ProductTableViewCell.self)
    
    @IBOutlet private weak var productImage: UIImageView!
    @IBOutlet private weak var productNameLabel: UILabel!
    @IBOutlet private weak var availableLabel: UILabel!
    @IBOutlet private weak var ratingLabel: UILabel!
    @IBOutlet private weak var kitchenLabel: UILabel!
    @IBOutlet private weak var deliveryLabel: UILabel!
    @IBOutlet private weak var distanceLabel: UILabel!
    @IBOutlet private weak var timeLabel: UILabel!
    @IBOutlet private weak var spendLabel: UILabel!
  
    
    
    
  

//    private var selectedItem: ProductModel?
//
//    func display(item: ProductModel, selected: ProductModel) {
    func display3(item: ProductModel) {
        
//        if selected.productName == item.productName {
//            productName.backgroundColor = .green
//        }

//        let isIselected = item.isSelected
//        productName.textColor = isSelected ? UIColor.white : UIColor.green
        
        productImage.image = UIImage(named: item.productImage)
        productNameLabel.text = item.productName
        availableLabel.text = item.available
        ratingLabel.text = item.rating
        kitchenLabel.text = item.kitchen
        deliveryLabel.text = item.delivery
        distanceLabel.text = item.distance
        timeLabel.text = item.time
        spendLabel.text = item.spend
        
    }
}




