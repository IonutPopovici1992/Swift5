//
//  ChannelVC.swift
//  Smack
//
//  Created by John on 1/29/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {
    
    // MARK: IBOutlet(s)
    @IBOutlet weak var loginButton: UIButton!
    
    // MARK: IBAction(s)
    @IBAction func loginButtonPressed(_ sender: UIButton) {
        performSegue(withIdentifier: TO_LOGIN, sender: nil)
    }
    
    @IBAction func prepareForUnwind(segue: UIStoryboardSegue) {}

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
