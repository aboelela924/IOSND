//
//  RandomColorizerTextFieldDelegate.swift
//  TextFields
//
//  Created by Ahmed Aboelela on 25/9/2020.
//  Copyright © 2020 Udacity. All rights reserved.
//

import Foundation
import UIKit

class RandomColorizerTextFieldDelegate: NSObject, UITextFieldDelegate{
    
    var red: Int = 0
    var blue: Int = 0
    var green: Int = 0
    
    
    
    
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        self.red = Int(arc4random_uniform(256))
        self.blue = Int(arc4random_uniform(256))
        self.green = Int(arc4random_uniform(256))
        
        
        let color: UIColor = UIColor.init(red: CGFloat(Float(self.red)/255.0),
                                          green: CGFloat(Float(self.green)/255.0),
                                          blue: CGFloat(Float(self.blue)/255.0),
                                          alpha: 1)
        
        textField.textColor = color
        
        return true
    }
    
}
