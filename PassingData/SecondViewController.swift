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
        
    }
}
