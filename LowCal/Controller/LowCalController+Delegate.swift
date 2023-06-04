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
            cell.mealChoiceHeight.constant = 327 * 3
//            cell.mealsChoice.rectForHeader(inSection: 0).size.height + cell.mealsChoice.rectForFooter(inSection: 0).size.height
            return cell
            
        }
    }
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
            switch section{
            case 0:
                return "Recommended meals"
            case 1:
                return "Choose package"
            default:
                return nil
            }
        }
     
        
        func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
            if let headerView = view as? UITableViewHeaderFooterView {
                headerView.textLabel?.textColor = #colorLiteral(red: 0, green: 0, blue: 0.06274509804, alpha: 1)
            }
        }
    
    
    
}
