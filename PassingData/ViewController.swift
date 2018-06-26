//
//  ViewController.swift
//  PassingData
//
//  Created by Sophie van Wersch on 25/06/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class ViewController: UIViewController, CanReceive {

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeToBlue(_ sender: Any) {
        
        if view.backgroundColor == UIColor.magenta {
             view.backgroundColor = UIColor.blue
        } else {
             view.backgroundColor = UIColor.magenta
        }
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
            
            secondVC.delegate = self

        }
    }

    // Required Delegate Method
    func dataReceived(data: String) {
        //display data inside label of first VC
        label.text = data
    }
}

