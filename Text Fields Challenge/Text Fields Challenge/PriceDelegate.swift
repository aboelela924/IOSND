//
//  PriceDelegate.swift
//  Text Fields Challenge
//
//  Created by Ahmed Aboelela on 25/9/2020.
//

import Foundation
import UIKit

class PriceDelegate: NSObject, UITextFieldDelegate{
    
    func textFieldDidBeginEditing(_ textField: UITextField){
        textField.text = "0.00"
    }
    
    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        if(string.isEmpty){
            let value: Double = Double(textField.text!) ?? 0
            textField.text = String(format: "%3.2f",  Double(Int(value*10))/100.0)
            return false
        }
        
        var newText = textField.text! as NSString
        newText = newText.replacingCharacters(in: range, with: string) as NSString
        newText.replacingOccurrences(of: "$", with: "")
        if let newText:String = newText as String{
            if let value = Double(newText) {
                textField.text = String(format: "%.2f", Double(value)*10.0)
            }
        }

        
        return false
    }
    
}
