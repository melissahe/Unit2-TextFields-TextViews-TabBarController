//
//  poloniusViewController.swift
//  Unit2-TextField-TextView-TabBar
//
//  Created by C4Q on 11/2/17.
//  Copyright © 2017 Melissa He @ C4Q. All rights reserved.
//

import UIKit

class poloniusViewController: UIViewController {

    var polonius = PoloniusMonologueModel()
    
    @IBOutlet weak var poloniusTextView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        poloniusTextView.text = polonius.textArr[0]
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        poloniusTextView.text = polonius.nextLine()
    }
    
}
