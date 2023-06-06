//
//  SectionOne+Delegate.swift
//  LowCal
//
//  Created by kariman eltawel on 04/06/2023.
//

import UIKit

extension SectionOneCell: UICollectionViewDelegate, UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        if collectionView == dateSection{
            return 5
        }
        else{
            return 3
        }
    }
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == dateSection{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "date", for: indexPath)
            if indexPath.row == selectedItem  {
                cell.contentView.backgroundColor = #colorLiteral(red: 0.4900045395, green: 0.7764635682, blue: 0.7376970649, alpha: 1)
            }
            else{
                cell.contentView.backgroundColor = #colorLiteral(red: 0.9960785508, green: 0.9960785508, blue: 0.9960784316, alpha: 1)
            }
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meal", for: indexPath)
            return cell}
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        if collectionView == dateSection{
            guard  let cell = dateSection.cellForItem(at: indexPath) else{
                fatalError("un dequeue cell")
            }
            selectDate?()
            selectedItem = indexPath.row
            dateSection.reloadData()
        }
        
    }
    
}

extension SectionOneCell: UICollectionViewDelegateFlowLayout{
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        if collectionView == dateSection{
            return CGSize(width: dateSection.layer.frame.width * 0.3 , height:  dateSection.layer.frame.height*0.7)
        }
        else
        {
            return CGSize(width: mealsSection.layer.frame.width * 0.4 , height:  mealsSection.layer.frame.height)
            
        }
    }
    
}
