//
//  SectionTwo+delegate.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit
extension SectionTwoCell:UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "MonthCell", for: indexPath) as! MonthCell
        return cell
    }
        
}

extension SectionTwoCell:UITableViewDelegate, UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MealChoiceCell", for: indexPath) as! MealChoiceCell
        
        if indexPath.row == index {
            cell.selectPackage.setTitle("selected ", for: .normal)
            cell.selectPackage.setImage(UIImage(named: "select"), for: .normal)
        }
        else{
            cell.selectPackage.setTitle("select package", for: .normal)
            cell.selectPackage.setImage(UIImage(), for: .normal)
        }
        
        cell.arrow = { [unowned self] in
            index = indexPath.row
            self.arrowSelectedTable?()
            mealsChoice.reloadData()
        }
        return cell
    }

    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return  327

    }
    
}
