//
//  ViewController.swift
//  autoLayoutPractice
//
//  Created by Lucia Reynoso on 10/25/18.
//  Copyright © 2018 Lucia Reynoso. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        let greenView = UIView()
        greenView.backgroundColor = .green
        greenView.translatesAutoresizingMaskIntoConstraints = false
        
        // green constraints
        let greenTop = NSLayoutConstraint(item: greenView, attribute: .top, relatedBy: .equal, toItem: self.view, attribute: .top, multiplier: 1, constant: 0)
        
        let greenWidth = NSLayoutConstraint(item: greenView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        
        let greenHeight = NSLayoutConstraint(item: greenView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.5, constant: 0)
        
        
        let blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.translatesAutoresizingMaskIntoConstraints = false
        
        // blue constraints
        let blueBottom = NSLayoutConstraint(item: blueView, attribute: .bottom, relatedBy: .equal, toItem: self.view, attribute: .bottom, multiplier: 1, constant: 0)
        
        let blueWidth = NSLayoutConstraint(item: blueView, attribute: .width, relatedBy: .equal, toItem: self.view, attribute: .width, multiplier: 1, constant: 0)
        
        let blueHeight = NSLayoutConstraint(item: blueView, attribute: .height, relatedBy: .equal, toItem: self.view, attribute: .height, multiplier: 0.5, constant: 0)
        
        self.view.addSubview(greenView)
        self.view.addSubview(blueView)
        
        NSLayoutConstraint.activate([greenTop, greenWidth, greenHeight, blueBottom, blueWidth, blueHeight])
    }


}

