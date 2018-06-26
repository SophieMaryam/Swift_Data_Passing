//
//  SecondViewController.swift
//  PassingData
//
//  Created by Sophie van Wersch on 25/06/2018.
//  Copyright © 2018 Sophie van Wersch. All rights reserved.
//

import UIKit

// Protocols at same hierarchial level as classes
// Sets out rules of engagement
protocol CanReceive {
    func dataReceived(data: String)
}

class SecondViewController: UIViewController {
    
    // Will do the delegating: Sending Data (second VC)
    // ? because the delegate might be nil
    var delegate : CanReceive?
    
    var data = ""
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        label.text = data
        print("hello2")
        
    }


    @IBAction func sendDataBack(_ sender: Any) {

        // if delegate is nil -> not triggered
        // if role of delegate != nil -> triggered
        // send data to the delegate via the method
        delegate?.dataReceived(data: textField.text!)
        dismiss(animated: true, completion: nil)
        print("hello1")
    }

}
