//
//  SecondCollectionViewCell.swift
//  Lesson1-month4
//
//  Created by Anara on 22/12/22.
//

import UIKit

class SecondCollectionViewCell: UICollectionViewCell {
    public static let reuseId2 = String(describing: SecondCollectionViewCell.self)
    
    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var textLabel: UILabel!
    
    
    func display2(item: SecondCollectionProductModel) {
    
    
//        if selected.firstTexLabel == item.firstTexLabel {
//            productName.backgroundColor = .green
//        }

//        let isIselected = item.isSelected
//        firstTextLabel.textColor = isSelected ? UIColor.white : UIColor.green
    textLabel.text = item.productName
        imageView.image = UIImage(named: item.imageIcon)
    
//        productImage.image = UIImage(named: item.productImage)
//        productNameLabel.text = item.productName
}

    
    
    
    override func layoutSubviews() {

    

    }
    

}

