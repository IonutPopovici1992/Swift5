//
//  ChannelVC.swift
//  Smack
//
//  Created by John on 1/29/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class ChannelVC: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        self.revealViewController()?.rearViewRevealWidth = self.view.frame.size.width - 60
    }

}
