//
//  ChannelVC.swift
//  smack
//
//  Created by Rick Pearce on 3/28/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController().rearViewRevealWidth = self.view.frame.size.width - 60
    }

    

}
