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
    private var firstColor = #colorLiteral(red: 0.7565339804, green: 0.9228332639, blue: 0.8984155059, alpha: 1).cgColor
    private var secondColor = #colorLiteral(red: 0.4900045395, green: 0.7764635682, blue: 0.7376970649, alpha: 1).cgColor
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        // Drawing code
        let lineWidth = 0.08 * min(rect.width,rect.height)
        
        backgroundLayer = drawCircleLayer(rect: rect, lineWidth: lineWidth, fillColor: UIColor.clear.cgColor, strokColor: UIColor.gray.cgColor)
        forgroundLayer = drawCircleLayer(rect: rect, lineWidth: lineWidth, fillColor: UIColor.clear.cgColor, strokColor: UIColor.red.cgColor)
        //gradient
        GragientLayer = CAGradientLayer()
        GragientLayer.colors = [firstColor,secondColor]
        GragientLayer.startPoint = CGPoint(x: 0.5, y: 0.0)
        GragientLayer.endPoint = CGPoint(x: 0.5, y: 1.0)
        GragientLayer.type = .conic
        GragientLayer.frame = rect
        GragientLayer.mask = forgroundLayer
        //---to----make---line---stop
//        forgroundLayer.strokeEnd = 0.5
        textLayer = createTextLayer(rect: rect, forgroundColor: UIColor.black.cgColor,
                                    yposition:(rect.height - CGFloat(25) - min(rect.width, rect.height) * 0.1)/2,text:"1366",fontSize: CGFloat(25))
        
        secondTextLayer = createTextLayer(rect: rect, forgroundColor: UIColor.black.cgColor,
                                          yposition:(rect.height - CGFloat(18) - (min(rect.width, rect.height) * 0.28)),
                                          text:"Calories/day",fontSize: CGFloat(15))
        layer.addSublayer(backgroundLayer)
        layer.addSublayer(GragientLayer)
        layer.addSublayer(textLayer)
        layer.addSublayer(secondTextLayer)
    }
    
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
        let offset = min(width, height) * 0.1
        
        let textLayer = CATextLayer()
        textLayer.string = text
        textLayer.backgroundColor = UIColor.clear.cgColor
        textLayer.foregroundColor = forgroundColor
        textLayer.fontSize = fontSize
        textLayer.frame = CGRect(x: 0, y: yposition, width: width, height: height)
        
        textLayer.alignmentMode = .center
        return textLayer
    }
    //height-fontSize-offset)/2
    
}
