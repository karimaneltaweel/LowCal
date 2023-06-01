//
//  ViewController.swift
//  LowCal
//
//  Created by kariman eltawel on 31/05/2023.
//

import UIKit

class LowCalController: UIViewController {
     var firstColor = #colorLiteral(red: 0.9647058845, green: 0.9647058845, blue: 0.9647058845, alpha: 1).cgColor
     var secondColor = #colorLiteral(red: 0.9960785508, green: 0.9960785508, blue: 0.9960784316, alpha: 1).cgColor
    var Thirdcolor = #colorLiteral(red: 0.8961616158, green: 0.950962007, blue: 0.9369022846, alpha: 1).cgColor
    override func viewDidLoad() {
        super.viewDidLoad()
        setUpGrediant()
        
    }
    
    private func setUpGrediant(){
        let gradient = CAGradientLayer()
        gradient.colors = [firstColor,secondColor,Thirdcolor]
        gradient.type = .axial
        gradient.startPoint = CGPoint(x: 1, y: 0.0)
        gradient.endPoint = CGPoint(x: 0.5, y: 1.0)
        view.layer.insertSublayer(gradient, at: 0)
        gradient.frame = view.frame
    }
    
    
}

