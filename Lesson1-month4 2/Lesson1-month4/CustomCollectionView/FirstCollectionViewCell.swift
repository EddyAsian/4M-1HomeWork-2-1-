//
//  CustomCollectionViewCell.swift
//  Lesson1-month4
//
//  Created by Iusupov Ramazan on 19/12/22.
//

import UIKit

class CustomCollectionViewCell: UICollectionViewCell {
    public static let reuseId = String(describing: CustomCollectionViewCell.self)
    
    @IBOutlet private weak var firstTextLabel: UILabel!
    
    @IBOutlet private weak var firstImageView: UIImageView!
    
    
//    private var selectedItem2: FirstCollectionProductModel?
    
//    func display(item: FirstCollectionProductModel, selected: FirstCollectionProductModel) {
//
        func display(item: FirstCollectionProductModel) {
        
        
//        if selected.firstTexLabel == item.firstTexLabel {
//            productName.backgroundColor = .green
//        }

//        let isIselected = item.isSelected
//        firstTextLabel.textColor = isSelected ? UIColor.white : UIColor.green
        firstTextLabel.text = item.firstProductName
        firstImageView.image = UIImage(systemName: item.firstImage)
        
//        productImage.image = UIImage(named: item.productImage)
//        productNameLabel.text = item.productName
    }
    
    
    override func layoutSubviews() {

        layer.cornerRadius = 15
        
    }
    
}


