//
//  AvatarCell.swift
//  Smack
//
//  Created by John on 3/23/20.
//  Copyright © 2020 John. All rights reserved.
//

import UIKit

class AvatarCell: UICollectionViewCell {
    
    // MARK: IBOutlet(s)
    @IBOutlet weak var avatarImage: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        setupView()
    }
    
    func setupView() {
        self.layer.backgroundColor = UIColor.lightGray.cgColor
        self.layer.cornerRadius = 10
        self.clipsToBounds = true
    }

}
