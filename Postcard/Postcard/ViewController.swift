//
//  ViewController.swift
//  Postcard
//
//  Created by Edward Pratt on 12/09/2014.
//  Copyright (c) 2014 Edward Pratt. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterMessageTextField: UITextField!
    
    @IBOutlet weak var enterNameTextField: UITextField!
    
    @IBOutlet weak var messageLabel: UILabel!
    
    @IBOutlet weak var mailButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        messageLabel.sizeToFit()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func sendMailButtonPressed(sender: UIButton) {
        //Code will evaluate when we press the button
        
        messageLabel.text=enterMessageTextField.text
        enterMessageTextField.text=nil
        mailButton.setTitle("Mail Sent", forState: UIControlState.Normal)
        messageLabel.hidden=false
        //Get rid of the popup keyboard.
        enterMessageTextField.resignFirstResponder()
        
    }

}

