//
//  CreateAccountVC.swift
//  Smack
//
//  Created by John on 3/10/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class CreateAccountVC: UIViewController {
    
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
        guard let email = emailText.text , emailText.text != "" else { return }
        guard let password = passwordText.text , passwordText.text != "" else { return }
        
        AuthService.instance.registerUser(email: email, password: password) { (success) in
            if success {
                // print("Registered user!")
                AuthService.instance.loginUser(email: email, password: password) { (success) in
                    if success {
                        print("Logged in user!", AuthService.instance.authToken)
                    }
                }
                
            }
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
