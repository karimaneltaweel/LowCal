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
        return 3
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == dateSection{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "date", for: indexPath)
            return cell
        }
        else{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "meal", for: indexPath)
            return cell}
    }
    
    
}
