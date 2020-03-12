//
//  LoginVC.swift
//  Smack
//
//  Created by John on 2/3/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    // MARK: IBOutlet(s)
    
    // MARK: IBAction(s)
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func createAccountButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_CREATE_ACCOUNT, sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()

    }

}
