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

    // MARK: IBAction(s)
    @IBAction func closeButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: UNWIND, sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
    }

}
