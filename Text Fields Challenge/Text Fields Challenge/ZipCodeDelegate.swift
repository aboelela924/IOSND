//
//  ZipCodeDelegate.swift
//  Text Fields Challenge
//
//  Created by Ahmed Aboelela on 25/9/2020.
//

import Foundation
import UIKit

class ZipCodeDelegate: NSObject, UITextFieldDelegate{
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        if(string.isEmpty){
            return true
        }else{
            let numChar = Character(string)
            if(!numChar.isNumber){
                return false
            }else{
                if(textField.text!.count >= 5){
                    return false
                }else{
                    return true
                }
            }
        }
        
    }
    
}
