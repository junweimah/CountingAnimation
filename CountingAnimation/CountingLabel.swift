//
//  CountingLabel.swift
//  CountingAnimation
//
//  Created by Tandem on 04/07/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit

class CountingLabel: UILabel {
    
    //dont need to access this outside of the class
    fileprivate let startValue: Double
    fileprivate let endValue: Double
    fileprivate let animationDuration: Double
    
    fileprivate let animationStartDate = Date()
    
    var displayLink = CADisplayLink()
    
    init(startValue: Double, endValue: Double, animationDuration: Double){
        self.startValue = startValue
        self.endValue = endValue
        self.animationDuration = animationDuration
        
        super.init(frame: .zero)
        
        self.text = "\(startValue)"
        self.textAlignment = .center
        self.font = UIFont.monospacedDigitSystemFont(ofSize: 20, weight: .medium) //to make it no wobble
        self.backgroundColor = .white
        self.layer.cornerRadius = 5
        self.layer.masksToBounds = true
        
        //create CADisplayLink here
        displayLink = CADisplayLink(target: self, selector: #selector(handleUpdate))
        displayLink.add(to: .main, forMode: .defaultRunLoopMode)
    }
    
    @objc func handleUpdate(){
        
        let now = Date()
        let elapsedTime = now.timeIntervalSince(animationStartDate)
        
        if elapsedTime > animationDuration {
            self.text = "\(endValue)"
        }else{
            let percentage = elapsedTime / animationDuration
            let value = startValue + percentage * (endValue - startValue)
            self.text = "\(value)"
        }
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
