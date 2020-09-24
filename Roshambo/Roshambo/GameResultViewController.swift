//
//  GameResultViewController.swift
//  Roshambo
//
//  Created by Ahmed Aboelela on 24/9/2020.
//

import UIKit

class GameResultViewController: UIViewController {

    enum Action: Int {
        case rock,  scissors,  paper
        
        static func randomAction() -> Action{
            let rand = arc4random_uniform(3)
            return Action(rawValue: Int(rand))!
        }
    }
    
    var actionNames: [String] = ["Rock", "Scissors", "Paper"]
    
    var userAction: Action?
    var randomAction: Action!
    
    @IBOutlet var resultImage: UIImageView!
    @IBOutlet var resultLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.randomAction = Action.randomAction()
        
        if(isTie()){
            resultImage.image = UIImage(named: "itsATie")
            resultLabel.text = "It is a tie. No Winner."
        }else{
            if isUserWinner() {
                let imageName: String = "\(actionNames[userAction?.rawValue ?? 0])\(actionNames[randomAction.rawValue])"
                resultImage.image = UIImage(named: imageName)
                print(imageName)
                resultLabel.text = "You Win."
            }else{
                String(describing: randomAction)
                let imageName: String = "\(actionNames[randomAction.rawValue])\(actionNames[userAction?.rawValue ?? 0])"
                print(imageName)
                resultImage.image = UIImage(named: imageName)
                resultLabel.text = "You Lost."
            }
        }
        
        
    }
    

    @IBAction func playAgain(_ sender: UIButton){
        dismiss(animated: true, completion: nil)
    }
    
    func isUserWinner() -> Bool {
        if let userAction = self.userAction{
            if (userAction == .rock && randomAction! == .paper){
                return false
            }else if(userAction == .rock && randomAction! == .scissors){
                return true
            }else if(userAction == .paper && randomAction! == .rock){
                return true
            }else if(userAction == .paper && randomAction! == .scissors){
                return false
            }else if(userAction == .scissors && randomAction! == .paper){
                return true
            }else if(userAction == .scissors && randomAction! == .rock){
                return false
            }
        }
        return false
    }
    
    func isTie() -> Bool{
        if let userAction = self.userAction{
            if userAction == randomAction!{
                return true
            }else{
                return false
            }
        }
        return false
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
