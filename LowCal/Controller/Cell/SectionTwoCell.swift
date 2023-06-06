//
//  SectionTwoCell.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit

class SectionTwoCell: UITableViewCell {
    @IBOutlet weak var monthCollection: UICollectionView!{
        didSet{
            monthCollection.dataSource = self
            monthCollection.delegate = self
        }
    }
    @IBOutlet weak var mealsChoice: UITableView!{
        didSet{
            mealsChoice.dataSource = self
            mealsChoice.delegate = self
        }
    }
    @IBOutlet weak var mealChoiceHeight: NSLayoutConstraint!
    
    var index :Int?
    var arrowSelectedTable:(()->())?
}

//struct PackagesModel: Decodable {
//    var packages: [Package]?
//}
//
//struct Package: Decodable {
//    var id: Int?
//    var title: String?
//    var image: String?
//    var selected: Bool? = false
//}
