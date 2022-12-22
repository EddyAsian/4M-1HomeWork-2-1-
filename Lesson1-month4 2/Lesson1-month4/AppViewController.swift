//
//  AppViewController.swift
//  Lesson1-month4
//
//  Created by Iusupov Ramazan on 19/12/22.
//

import UIKit

class AppViewController: UIViewController {

    @IBOutlet private weak var firstCollectionView: UICollectionView!
    @IBOutlet private weak var secondCollectionView: UICollectionView!
    
    @IBOutlet private weak var tableView: UITableView!
    
    
   
    
//    private let mockData: [String] = [
//        "Delivery", "Pickup", "Catering", "Delivery", "Pickup", "Catering"
//    ]
    
//    private let secondMockData: [String] = [
//        "Delivery", "Pickup", "Catering", "Delivery", "Delivery", "Delivery", "Delivery", "Delivery", "Delivery"
//    ]
//
    
    
    
    
    
    
    private let transferArray: [FirstCollectionProductModel] = [
        .init(firstProductName: "Delivery", firstImage: "play.fill", isSelected: true),
        .init(firstProductName: "Pickup", firstImage: "square.and.pencil", isSelected: true),
        .init(firstProductName: "Catering", firstImage: "person.badge.key", isSelected: true),
        .init(firstProductName: "Curbside", firstImage: "figure.wrestling", isSelected: true),
        .init(firstProductName: "Walking", firstImage: "figure.water.fitness", isSelected: true),
        .init(firstProductName: "Picnic", firstImage: "play.fill", isSelected: true),
        .init(firstProductName: "Ordering", firstImage: "play.fill", isSelected: true),
        .init(firstProductName: "Waiting", firstImage: "play.fill", isSelected: true)
    ]
    
    
    
    
    private let shopsArray: [SecondCollectionProductModel] = [
        .init(imageIcon: "image", productName: "Takeaways", isSelected: true),
        .init(imageIcon: "image1", productName: "Grocery", isSelected: true),
        .init(imageIcon: "image2", productName: "Convenience", isSelected: true),
        .init(imageIcon: "image3", productName: "Pharmacy", isSelected: true),
        .init(imageIcon: "image", productName: "Aroma", isSelected: true),
        .init(imageIcon: "image1", productName: "Vegetables", isSelected: true),
        .init(imageIcon: "image2", productName: "Healthy", isSelected: true),
        .init(imageIcon: "image3", productName: "Medicine", isSelected: true),
     ]
    
        
    
    
    
    
    
//    var data: [CollectionProductModel] = [
//       CollectionProductModel(imageIcon: ["image", "image1", "image2", "image3"], productName: ["Takeaways", "Grocery", "Convinience", "Pharmacy"], isSelected: false)
//        ]
//    var filtered = [CollectionProductModel]()
        
        
    
    private let productsArray: [ProductModel] = [
        
//        ProductModel(productImage: <#T##String#>, productName: <#T##String#>, available: <#T##String#>, rating: <#T##String#>, kitchen: <#T##String#>, delivery: <#T##String#>, distance: <#T##String#>, time: <#T##String#>, spend: <#T##String#>, isSelected: <#T##Bool#>)
        
        
        .init(productImage: "Product1", productName: "Burger Craze", available: "•  OPEN", rating: "★ 4.6 (601)", kitchen: "American • Burgers", delivery: "Delivery: Free  •  Minumum: $10", distance: "􀈟 1.5 km away", time: "15 - 20 min", spend: "Spend 25$, save $5", isSelected: false),
        .init(productImage: "Product2", productName: "Vegetarian Pizza", available: "•  OPEN", rating: "★ 4.2 (599)", kitchen: "Italian • Pizza", delivery: "Delivery: Free  •  Minumum: $12", distance: "􀈟 2.8 km away", time: "20 - 25 min", spend: "Spend 40$, save $8", isSelected: false),
        .init(productImage: "Product3", productName: "Kebab BBQ", available: "•  OPEN", rating: "★ 6.2 (701)", kitchen: "Asian • BBQ", delivery: "Delivery: Free  •  Minumum: $9", distance: "􀈟 3.5 km away", time: "24 - 26 min", spend: "Spend 30$, save $9", isSelected: false),
        .init(productImage: "Product4", productName: "Lagman Berry", available: "•  OPEN", rating: "★ 6.6 (601)", kitchen: "Asian • Fastfood", delivery: "Delivery: Free  •  Minumum: $13", distance: "􀈟 5.5 km away", time: "30 - 35 min", spend: "Spend 29$, save $5", isSelected: false),
        
        
    ]
    
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.dataSource = self
        tableView.delegate = self
        tableView.register(UINib(nibName: "ProductTableViewCell", bundle: nil), forCellReuseIdentifier: "ProductTableViewCell")
        configureCollectionView()
//        filtered = data
    }
    
    private func configureCollectionView() {
        firstCollectionView.dataSource = self
        firstCollectionView.delegate = self
        firstCollectionView.register(
            UINib(
                nibName: String(describing: CustomCollectionViewCell.self),
                bundle: nil),
            forCellWithReuseIdentifier: CustomCollectionViewCell.reuseId)
        secondCollectionView.dataSource = self
        secondCollectionView.delegate = self
        secondCollectionView.register(
            UINib(
                nibName: String(describing: SecondCollectionViewCell.self),
                bundle: nil),
            forCellWithReuseIdentifier: SecondCollectionViewCell.reuseId2)
//        tableView.dataSource = self
//        tableView.delegate = self
//        tableView.register(
//            UINib(
//                nibName: String(describing: ProductTableViewCell.self),
//                bundle: nil),
//            forCellWithReuseIdentifier: ProductTableViewCell.reuseId3)
    }
}

extension AppViewController: UICollectionViewDataSource {
    func collectionView(
        _ collectionView: UICollectionView,
        numberOfItemsInSection section: Int
    ) -> Int {
        if collectionView == firstCollectionView {
            return transferArray.count
        } else {
            
            return shopsArray.count
//            return filtered[0].imageIcon.count
        }
        
    }
    
    func collectionView(
        _ collectionView: UICollectionView,
        cellForItemAt indexPath: IndexPath
    ) -> UICollectionViewCell {
        if collectionView == firstCollectionView {
            let cell = collectionView
                .dequeueReusableCell(
                    withReuseIdentifier: CustomCollectionViewCell.reuseId,
                    for: indexPath
                ) as! CustomCollectionViewCell
            
            let transfer = transferArray[indexPath.row]
            
    //        cell.tele = productsArray[indexPath.row]
            cell.display(item: transfer)
            
            
            return cell
            
        } else {
           
            let cell = collectionView
                .dequeueReusableCell(
                    withReuseIdentifier: SecondCollectionViewCell.reuseId2,
                    for: indexPath
                ) as! SecondCollectionViewCell
//
            let shops = shopsArray[indexPath.row]
            
    //        cell.tele = productsArray[indexPath.row]
            cell.display2(item: shops)

            return cell
            
        }
        
    }
}

extension AppViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
//        if collectionView == firstCollectionView {
//            return CGSize(width: 90, height: 200)
//        }
        return CGSize(width: 90, height: 110)
    }
    
}



extension AppViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        productsArray.count
        productsArray.count
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
        let product = productsArray[indexPath.row]
        
//        cell.tele = productsArray[indexPath.row]
        cell.display3(item: product)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 300
        
    }
}


extension AppViewController: UITableViewDelegate {
    
}




//extension AppViewController: UITableViewDataSource {
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
////        productsArray.count
//        productsArray.count
//
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "ProductTableViewCell") as! ProductTableViewCell
//        let product = productsArray[indexPath.row]
//
////        cell.tele = productsArray[indexPath.row]
//        cell.display(item: product)
//
//        return cell
//    }
//}
//
//
//extension AppViewController: UITableViewDelegate {
//
//}
