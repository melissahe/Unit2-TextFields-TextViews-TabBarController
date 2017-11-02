//
//  randJViewController.swift
//  Unit2-TextField-TextView-TabBar
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class randJViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var warningLabel: UILabel!
    @IBOutlet weak var rAndJTextField: UITextField!
    @IBOutlet weak var rAndJTextView: UITextView!
    
    var rAndJMonologue = RomeoAndJulietModel()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        rAndJTextField.delegate = self
        warningLabel.text = ""
        rAndJTextView.text = ""
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        guard let name = textField.text else {
            return false
        }
        
        switch name.uppercased() {
        case "ROMEO", "BENVOLIO", "MERCUTIO":
            rAndJTextView.text = rAndJMonologue.returnLines(of: name.uppercased())
        default:
            rAndJTextView.text = ""
            warningLabel.text = "That's not a correct name."
            return false
        }
        
        warningLabel.text = ""
        textField.resignFirstResponder()
        return true
    }
}
