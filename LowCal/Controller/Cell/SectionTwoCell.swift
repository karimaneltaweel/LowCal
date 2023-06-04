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
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
