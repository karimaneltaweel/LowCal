//
//  ProgressBar.swift
//  LowCal
//
//  Created by kariman eltawel on 01/06/2023.
//

import UIKit

class ProgressBar: UIView {
    
    private var backgroundLayer:CAShapeLayer!
    private var forgroundLayer:CAShapeLayer!
    private var textLayer:CATextLayer!
    private var secondTextLayer:CATextLayer!
    private var GragientLayer:CAGradientLayer!
    @IBInspectable private var firstColor = #colorLiteral(red: 0.7565339804, green: 0.9228332639, blue: 0.8984155059, alpha: 1).cgColor
    @IBInspectable private var secondColor = #colorLiteral(red: 0.4900045395, green: 0.7764635682, blue: 0.7376970649, alpha: 1).cgColor
    
    //MARK: -draw
    
    override func draw(_ rect: CGRect) {
        // Drawing code
        let lineWidth = 0.04 * min(rect.width,rect.height)
        
        backgroundLayer = drawCircleLayer(rect: rect, lineWidth: lineWidth, fillColor: UIColor.clear.cgColor, strokColor: #colorLiteral(red: 0.9498491883, green: 0.9449363351, blue: 0.9450214505, alpha: 1).cgColor)
        
        forgroundLayer = drawCircleLayer(rect: rect, lineWidth: lineWidth, fillColor: UIColor.clear.cgColor, strokColor: UIColor.red.cgColor)
        //gradient
        GragientLayer = createGradient(rect: rect)
        GragientLayer.mask = forgroundLayer
        //---to----make---line---stop
        forgroundLayer.strokeEnd = 0.8
        //--------------text--------------
        textLayer = createTextLayer(rect: rect, forgroundColor: UIColor.black.cgColor,
    
                                    yposition:(rect.height - CGFloat(25) - min(rect.width, rect.height) * 0.1)/2,text:"1366",fontSize: CGFloat(25))
        
        secondTextLayer = createTextLayer(rect: rect, forgroundColor: #colorLiteral(red: 0, green: 0.2380232811, blue: 0.304931581, alpha: 1).cgColor,
                                          yposition:(rect.height - CGFloat(18) - (min(rect.width, rect.height) * 0.28)),
                                          text:"Calories/day",fontSize: CGFloat(10))
        
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(GragientLayer)
        layer.addSublayer(textLayer)
        layer.addSublayer(secondTextLayer)
        
    }
    
    //MARK: -HELPERS
    private func drawCircleLayer(rect:CGRect,lineWidth:CGFloat,fillColor:CGColor,strokColor:CGColor)->CAShapeLayer{
        let width = rect.width
        let height = rect.height
        let center = CGPoint(x: width/2, y: height/2)
        let radius = (min(width,height)-lineWidth)/2
        let startAngle = -CGFloat.pi/2
        let endAngle = startAngle + 2*CGFloat.pi
        
        let circlePath = UIBezierPath(arcCenter: center, radius: radius, startAngle: startAngle, endAngle: endAngle, clockwise: true)
        //---backGround
        let ShapeLayer = CAShapeLayer()
        ShapeLayer.path = circlePath.cgPath
        ShapeLayer.fillColor = fillColor
        ShapeLayer.strokeColor = strokColor
        ShapeLayer.lineWidth = lineWidth
        ShapeLayer.lineCap = .round
        return ShapeLayer
    }
    
    private func createTextLayer(rect:CGRect,forgroundColor:CGColor,yposition:CGFloat,text:String,fontSize:CGFloat) -> CATextLayer{
        let width = rect.width
        let height = rect.height
        
        let fontSize = fontSize
//        let offset = min(width, height) * 0.1
        
        let textLayer = CATextLayer()
        textLayer.string = text
        textLayer.backgroundColor = UIColor.clear.cgColor
        textLayer.foregroundColor = forgroundColor
        textLayer.fontSize = fontSize
        textLayer.frame = CGRect(x: 0, y: yposition, width: width, height: height)
        
        textLayer.alignmentMode = .center
        return textLayer
    }
        
    private func createGradient(rect:CGRect)->CAGradientLayer{
        let gragient = CAGradientLayer()
        gragient.colors = [firstColor,secondColor]
        gragient.startPoint = CGPoint(x: 0.5, y: 0.0)
        gragient.endPoint = CGPoint(x: 0.5, y: 1.0)
        gragient.frame = rect
        return gragient
    }
    
}
