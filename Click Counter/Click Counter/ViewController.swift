//
//  ViewController.swift
//  Click Counter
//
//  Created by Ahmed Aboelela on 24/9/2020.
//  Copyright © 2020 Ahmed Aboelela. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var count = 0
    var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        let label = UILabel()
        label.frame = CGRect(x: 150, y: 150, width: 60, height: 60)
        label.text = "0"
        view.addSubview(label)
        self.countLabel = label
        
        let button = UIButton()
        button.frame = CGRect(x: 100, y: 220, width: 100, height: 60)
        button.setTitle("Increment", for: .normal)
        button.setTitleColor(.blue, for: .normal)
        view.addSubview(button)
        button.addTarget(self, action: #selector(ViewController.increment), for: .touchUpInside)
        
        let decrementButton = UIButton()
        decrementButton.frame = CGRect(x: 220, y: 220, width: 100, height: 60)
        decrementButton.setTitle("Decrement", for: .normal)
        decrementButton.setTitleColor(.blue, for: .normal)
        view.addSubview(decrementButton)
        decrementButton.addTarget(self, action: #selector(ViewController.decrement), for: .touchUpInside)
    }
    
    @objc func increment(){
        count = count +  1
        self.countLabel.text = "\(count)"
    }
    
    @objc func decrement(){
        count = count - 1
        self.countLabel.text = "\(count)"
    }

}

