//
//  SecondViewController.swift
//  PassingData
//
//  Created by Sophie van Wersch on 25/06/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
        
    }


    @IBAction func sendDataBack(_ sender: Any) {
        performSegue(withIdentifier: "sendDataBack", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "sendDataBack" {
            let firstVC = segue.destination as! ViewController
            
            firstVC.dataPassedBack = textField.text!
        }
    }
}
