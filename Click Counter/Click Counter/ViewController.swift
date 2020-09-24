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
    @IBOutlet var countLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }
    
    @IBAction func increment(){
        count = count +  1
        self.countLabel.text = "\(count)"
    }
    
    @objc func decrement(){
        count = count - 1
        self.countLabel.text = "\(count)"
    }

}

