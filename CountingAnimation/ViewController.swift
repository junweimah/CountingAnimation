//
//  ViewController.swift
//  CountingAnimation
//
//  Created by Tandem on 04/07/2018.
//  Copyright © 2018 Tandem. All rights reserved.
//

import UIKit



class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .black
        
        let stackView = StatsStackView()
        view.addSubview(stackView)
        stackView.frame = view.frame
 
    }

}

