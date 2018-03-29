//
//  LoginVC.swift
//  smack
//
//  Created by Rick on 3/28/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }

    @IBAction func loginPressed(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    

    @IBAction func createAccountBtnPressed(_ sender: Any) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }
}
