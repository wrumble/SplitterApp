//
//  CarouselItemPayButton.swift
//  Splitter
//
//  Created by Wayne Rumble on 24/01/2017.
//  Copyright © 2017 Wayne Rumble. All rights reserved.
//

import UIKit

class CarouselBottomButton: UIButton {
    
    required override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupView()
        applyMaskLayer()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
//Format Buttons View
    func setupView() {
        
        self.backgroundColor = UIColor(netHex: 0x000010)
        self.setTitleColor(UIColor(netHex: 0xe9edef), for: .normal)
        self.titleLabel?.font = UIFont.systemFont(ofSize: 17)
    }
    
//Curve bott corners of the button to match the carousel
    func applyMaskLayer() {
        
        let payBounds: CGRect = self.bounds
        let payMaskPath = UIBezierPath(roundedRect: payBounds, byRoundingCorners: ([.bottomLeft, .bottomRight]), cornerRadii: CGSize(width: CGFloat(10.0), height: CGFloat(10.0)))
        let payMaskLayer = CAShapeLayer()
        payMaskLayer.frame = payBounds
        payMaskLayer.path = payMaskPath.cgPath
        self.layer.mask = payMaskLayer
    }
}
