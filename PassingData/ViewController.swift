//
//  ViewController.swift
//  PassingData
//
//  Created by Sophie van Wersch on 25/06/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var dataPassedBack = ""

    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        label.text = dataPassedBack
    }
    
    @IBAction func sendButtonPressed(_ sender: Any) {
        performSegue(withIdentifier: "sendDataForwards", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataForwards" {
            
            let secondVC = segue.destination as! SecondViewController
            
            secondVC.data = textField.text!
        }
    }
}

