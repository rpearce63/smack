//
//  ProfileVC.swift
//  smack
//
//  Created by Rick on 3/30/18.
//  Copyright © 2018 Rick Pearce. All rights reserved.
//

import UIKit

class ProfileVC: UIViewController {

    @IBOutlet weak var profileImage: UIImageView!
    @IBOutlet weak var bgView: UIView!
    @IBOutlet weak var userNameTxt: UITextField!
    @IBOutlet weak var editUsernameBtn: UIButton!
    @IBOutlet weak var updateUsernameBtn: UIButton!
    @IBOutlet weak var usernameStack: UIStackView!
    @IBOutlet weak var newUsernameStack: UIStackView!
    
    @IBOutlet weak var userEmail: UILabel!
    @IBOutlet weak var username: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        setupView()
        
    }

    @IBAction func closeModalPressed(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    
    @IBAction func logoutPressed(_ sender: Any) {
        UserDataService.instance.logoutUser()
        NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
        dismiss(animated: true, completion: nil)
    }
    
    func setupView() {
        profileImage.image = UIImage(named: UserDataService.instance.avatarName)
        profileImage.backgroundColor = UserDataService.instance.returnUIColor(components: UserDataService.instance.avatarColor)
        usernameStack.isHidden = false
        newUsernameStack.isHidden = true
        username.text = UserDataService.instance.name
        userEmail.text = UserDataService.instance.email
        let closeTouch = UITapGestureRecognizer(target: self, action: #selector(ProfileVC.closeTap(_:)))
        bgView.addGestureRecognizer(closeTouch)
    }
    
    @objc func closeTap(_ recognizer: UITapGestureRecognizer) {
        dismiss(animated: true, completion: nil)
    }

    @IBAction func updateUsernamePressed(_ sender: Any) {
        let userId = UserDataService.instance.id
        guard let newUserName = userNameTxt.text , userNameTxt.text != "" else { return }
        AuthService.instance.updateUsername(userId: userId, newUsername: newUserName) { (success) in
            if success {
                UserDataService.instance.setUsername(newUsername: newUserName)
                NotificationCenter.default.post(name: NOTIF_USER_DATA_DID_CHANGE, object: nil)
                self.usernameStack.isHidden = false
                self.newUsernameStack.isHidden = true
                self.dismiss(animated: true, completion: nil)
            }
        }
    }
    
    @IBAction func editUsernamePressed(_ sender: Any) {
        usernameStack.isHidden = true
        newUsernameStack.isHidden = false
    }
}
