//
//  StoryCollectionViewCell.swift
//  Catstargram
//
//  Created by 임영준 on 2022/04/15.
//

import UIKit

class StoryCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var viewImageViewBackground: UIView!
    
    @IBOutlet weak var viewUserProfileBackground: UIView!
    @IBOutlet weak var userImageViewProfile: UIImageView!
    override func awakeFromNib() {
        super.awakeFromNib()
        
        viewImageViewBackground.layer.cornerRadius = 24
        viewUserProfileBackground.layer.cornerRadius = 23.5
        userImageViewProfile.layer.cornerRadius = 22.5
        userImageViewProfile.clipsToBounds = true
        // Initialization code
    }

}
