//
//  CreateAccountVC.swift
//  smack
//
//  Created by Rick on 3/28/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

    }

    
    @IBAction func closePressed(_ sender: Any) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
}
