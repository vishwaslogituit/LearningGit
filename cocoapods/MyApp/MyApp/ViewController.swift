//
//  ViewController.swift
//  MyApp
//
//  Created by Anurag Ajwani on 30/09/2018.
//  Copyright © 2018 Anurag Ajwani. All rights reserved.
//

import UIKit
import MyFramework

class ViewController: UIViewController {

    @IBAction func login(_ sender: Any) {
        present(LoginViewController(), animated: true, completion: nil)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }


}

