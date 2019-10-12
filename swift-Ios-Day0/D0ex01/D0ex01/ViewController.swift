//
//  ViewController.swift
//  D0ex01
//
//  Created by Piet RAGOLANE on 2019/10/08.
//  Copyright © 2019 Piet RAGOLANE. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var helloLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func clickMe(_ sender: UIButton) {
        helloLabel.text = "Hello World !";
    }
    
}

