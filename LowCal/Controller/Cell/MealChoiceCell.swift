//
//  MealChoiceCell.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit

class MealChoiceCell: UITableViewCell {
    @IBOutlet weak var selectPackage: UIButton!
    var arrow:(()->())?

    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.contentView.layer.cornerRadius = 20
        self.contentView.layer.borderWidth  = 1
        self.contentView.layer.borderColor = #colorLiteral(red: 0.8922383785, green: 0.947040379, blue: 0.932980597, alpha: 1).cgColor
        contentView.frame = contentView.frame.inset(by: UIEdgeInsets(top: 10, left: 10, bottom: 10, right: 10))

    }
    
    @IBAction func selectActionButton(_ sender: Any) {
        arrow?()
    }
}
