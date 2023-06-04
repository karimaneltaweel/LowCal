//
//  monthCell.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit

class MonthCell: UICollectionViewCell {
    override func layoutSublayers(of layer: CALayer) {
        super.layoutSublayers(of: layer)
        self.layer.cornerRadius = 20
        self.layer.borderWidth = 1
        self.layer.borderColor = #colorLiteral(red: 0.4900045395, green: 0.7764635682, blue: 0.7376970649, alpha: 1).cgColor
    }
}
