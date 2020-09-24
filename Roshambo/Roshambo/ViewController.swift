//
//  ViewController.swift
//  Roshambo
//
//  Created by Ahmed Aboelela on 24/9/2020.
//

import UIKit




class ViewController: UIViewController {
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    @IBAction func paper(_ sender: UIButton){
        let gameResult: GameResultViewController = storyboard?.instantiateViewController(withIdentifier: "gameResultViewController") as! GameResultViewController
        
        gameResult.userAction = GameResultViewController.Action.paper
        
        present(gameResult, animated: true, completion: nil)
    }
    
    @IBAction func rock(_ sender: UIButton){
        performSegue(withIdentifier: "fromRock", sender: self)
    }
    
    @IBAction func scissors(_ sender: UIButton){
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let controller: GameResultViewController = segue.destination as! GameResultViewController
        if(segue.identifier == "fromRock"){
            controller.userAction = GameResultViewController.Action.rock
        }else if(segue.identifier == "fromScissors"){
            controller.userAction = GameResultViewController.Action.scissors
        }
    }

}

