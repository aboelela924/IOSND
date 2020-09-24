//
//  ViewController.swift
//  Open Camera Role
//
//  Created by Ahmed Aboelela on 24/9/2020.
//

import UIKit
import Photos

class ViewController: UIViewController, UIImagePickerControllerDelegate & UINavigationControllerDelegate {

    @IBOutlet var presentButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
    }

    @IBAction func presentCameraRole(_ sender: UIButton){
        
        let alert = UIAlertController()
        alert.title = "Fuck UNI"
        alert.message = "I have University"
        let action = UIAlertAction(title: "OK", style: .default) { (action) in
            self.dismiss(animated: true, completion: nil)
        }
        alert.addAction(action)
        present(alert, animated: true, completion: nil)
        
        
        /*let image = UIImage()
        let controller = UIActivityViewController(activityItems: [image], applicationActivities: nil)
        self.present(controller, animated: true, completion: nil)*/
        
        /*let authorization = PHPhotoLibrary.authorizationStatus()
        switch authorization {
        case .authorized:
            let photoViewController = UIImagePickerController()
            present(photoViewController, animated: true, completion: nil)
            break
        case .denied:
            print("Denied")
            break
        case .limited:
            print("Limited")
            break
        case .notDetermined:
            print("Not Determined")
            PHPhotoLibrary.requestAuthorization { (newState) in
                DispatchQueue.main.async {
                    if(newState == .authorized){
                        print("Authorized")
                    }else{
                        print("Denied")
                    }
                }
            }
            break
        case .restricted:
            print("Restricted")
            break
        default:
            print("Default")
            break
        }*/
    }

}

