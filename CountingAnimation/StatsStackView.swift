//
//  StatsStackView.swift
//  CountingAnimation
//
//  Created by Tandem on 04/07/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class StatsStackView: UIStackView {
    let lblCount1 = CountingLabel(startValue: 1, endValue: 100, animationDuration: 1.5)
    let lblCount2 = CountingLabel(startValue: 50, endValue: 2000, animationDuration: 2.0)
    let lblCount3 = CountingLabel(startValue: 300, endValue: 3000, animationDuration: 2.5)
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        self.addArrangedSubview(lblCount1)
        self.addArrangedSubview(lblCount2)
        self.addArrangedSubview(lblCount3)
        
        self.axis = .vertical
        self.distribution = .fillEqually
        self.spacing = 32
        
        self.layoutMargins = UIEdgeInsetsMake(32, 32, 32, 32)
        self.isLayoutMarginsRelativeArrangement = true
        
    }
    
    required init(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
