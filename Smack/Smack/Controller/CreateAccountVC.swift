//
//  CreateAccountVC.swift
//  Smack
//
//  Created by John on 3/10/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
    // MARK: Variables
    var avatarName = "profileDefault"
    var avatarColor = "[0.5, 0.5, 0.5, 1]"
    
    // MARK: IBOutlet(s)
    @IBOutlet weak var usernameText: UITextField!
    @IBOutlet weak var emailText: UITextField!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var userImage: UIImageView!

    // MARK: IBAction(s)
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }
    
    @IBAction func pickAvatarPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func pickBGColorPressed(_ sender: UIButton) {
        
    }
    
    @IBAction func createAccountPressed(_ sender: UIButton) {
        guard let name = usernameText.text , usernameText.text != "" else { return }
        guard let email = emailText.text , emailText.text != "" else { return }
        guard let password = passwordText.text , passwordText.text != "" else { return }

        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                // print("Registered user!")
                AuthService.instance.loginUser(email: email, password: password) { (success) in
                    if success {
                        // print("Logged in user!", AuthService.instance.authToken)
                        AuthService.instance.createUser(name: name,
                                                        email: email,
                                                        avatarName: self.avatarName,
                                                        avatarColor: self.avatarColor) { (success) in
                                                            if success {
                                                                print(UserDataService.instance.name,
                                                                      UserDataService.instance.avatarName)
                                                                self.performSegue(withIdentifier: UNWIND, sender: nil)
                                                            }
                                                        }
                    }
                }

            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
