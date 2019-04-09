//
//  CircleProgressBar.swift
//  DesignApp
//
//  Created by Maksim Shershun on 4/7/19.
//  Copyright © 2019 Maksim Shershun. All rights reserved.
//

import UIKit

class CircleProgressBar: UIView {

    @IBOutlet weak var progressBar: UIView!
    @IBOutlet weak var stackView: UIStackView!
    
    @IBOutlet weak var percentLabel: UILabel!
    @IBOutlet weak var userLabel: UILabel!
    
    let blueShapeLayer = CAShapeLayer()
    let greyShapeLayer = CAShapeLayer()
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupProgressBar()
    }
    
    private func setupProgressBar() {
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: progressBar.frame.size.width/2,
                                                           y: progressBar.frame.size.height/2),
                                        radius: 34,
                                        startAngle: -CGFloat.pi / 2,
                                        endAngle: CGFloat.pi * 2,
                                        clockwise: true)
        
        drawGreyCircle()
        
        blueShapeLayer.path = circularPath.cgPath
        
        blueShapeLayer.strokeColor = #colorLiteral(red: 0.1052331403, green: 0.4782586694, blue: 0.8127788901, alpha: 1)
        blueShapeLayer.lineWidth = 10
        blueShapeLayer.fillColor = UIColor.clear.cgColor
        blueShapeLayer.lineCap = CAShapeLayerLineCap.round
        
        blueShapeLayer.strokeEnd = 0
        
        progressBar.layer.addSublayer(blueShapeLayer)
        
        let animation = progressBarAnimation(0.5, duration: 2)
        blueShapeLayer.add(animation, forKey: "urSoBasic")
    }
    
    private func drawGreyCircle() {
        let circularPath = UIBezierPath(arcCenter: CGPoint(x: progressBar.frame.size.width/2,
                                                           y: progressBar.frame.size.height/2),
                                        radius: 34,
                                        startAngle: 0,
                                        endAngle: CGFloat.pi * 2,
                                        clockwise: true)
        
        
        greyShapeLayer.path = circularPath.cgPath
        
        greyShapeLayer.strokeColor = #colorLiteral(red: 0.2663185, green: 0.2733725905, blue: 0.3554939032, alpha: 1)
        greyShapeLayer.lineWidth = 8
        greyShapeLayer.fillColor = UIColor.clear.cgColor
        greyShapeLayer.lineCap = CAShapeLayerLineCap.round
        
        greyShapeLayer.strokeEnd = 0
        
        progressBar.layer.addSublayer(greyShapeLayer)
        
        let animation = progressBarAnimation(1, duration: 0.1)
        greyShapeLayer.add(animation, forKey: "urSoBasic")
    }
    
    private func progressBarAnimation(_ toValue: Double, duration: Double) -> CABasicAnimation {
        let animation = CABasicAnimation(keyPath: "strokeEnd")
        
        animation.toValue = toValue
        animation.duration = duration
        
        animation.fillMode = CAMediaTimingFillMode.forwards
        animation.isRemovedOnCompletion = false
        
        return animation
    }
    
    class var identifier: String {
        return String(describing: self)
    }
}
