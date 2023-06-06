//
//  SectionOneCell.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit

class SectionOneCell: UITableViewCell {
    @IBOutlet weak var dateSection: UICollectionView!{
        didSet{
            dateSection.delegate = self
            dateSection.dataSource = self
        }
    }
    @IBOutlet weak var mealsSection: UICollectionView!{
        didSet{
                mealsSection.delegate = self
                mealsSection.dataSource = self
        }
    }
    var selectedItem = 0
    var selectDate:(()->())?

}
