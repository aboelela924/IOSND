//
//  ViewController.swift
//  Text Fields Challenge
//
//  Created by Ahmed Aboelela on 25/9/2020.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet var zipCodeTextField: UITextField!
    @IBOutlet var priceTextField: UITextField!
    @IBOutlet var switchedTextField: UITextField!
    @IBOutlet var textSwitch: UISwitch!
    
    let zipCodeDelegate = ZipCodeDelegate()
    let priceDelegate = PriceDelegate()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        zipCodeTextField.delegate = zipCodeDelegate
        priceTextField.delegate = priceDelegate
        switchedTextField.delegate = self
        
    }

    func textField(_ textField: UITextField, shouldChangeCharactersIn range: NSRange, replacementString string: String) -> Bool{
        return textSwitch.isOn
    }

}

