//
//  LowCalController+Delegate.swift
//  LowCal
//
//  Created by kariman eltawel on 01/06/2023.
//

import UIKit
extension LowCalController: UITableViewDelegate, UITableViewDataSource{
    func numberOfSections(in tableView: UITableView) -> Int {
        2
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        if indexPath.section == 0
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SectionOneCell", for: indexPath) as! SectionOneCell
            return cell

        }
        else
        {
            let cell = tableView.dequeueReusableCell(withIdentifier: "SectionTwoCell", for: indexPath) as! SectionTwoCell
            return cell
            
        }
    }
    
    
    
}
