//
//  ViewController.swift
//  Color Maker
//
//  Created by Ahmed Aboelela on 24/9/2020.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redSlider: UISlider!
    @IBOutlet var greenSlider: UISlider!
    @IBOutlet var blueSlider: UISlider!
    @IBOutlet var colorView: UIView!
    
    var red: Int = 0
    var blue: Int = 0
    var green: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let color: UIColor = UIColor(displayP3Red: CGFloat(self.red)/255.0, green: CGFloat(self.green)/255.0, blue: CGFloat(self.blue)/255.0, alpha: 1.0)
        colorView.backgroundColor = color
    }

    @IBAction func generateColor(_ sender: UISlider){
        if(sender.tag == 0){
            self.red = Int(sender.value)
        }else if(sender.tag == 1){
            self.green = Int(sender.value)
        }else if(sender.tag == 2){
            self.blue = Int(sender.value)
        }
        let color: UIColor = UIColor(displayP3Red: CGFloat(self.red)/255.0, green: CGFloat(self.green)/255.0, blue: CGFloat(self.blue)/255.0, alpha: 1.0)
        colorView.backgroundColor = color
    }

}

