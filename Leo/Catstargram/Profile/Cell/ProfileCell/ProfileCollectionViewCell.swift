//
//  ProfileCollectionViewCell.swift
//  Catstargram
//
//  Created by 임영준 on 2022/05/10.
//

import UIKit

class ProfileCollectionViewCell: UICollectionViewCell {
    static let identifier = "ProfileCollectionViewCell"

    @IBOutlet weak var profileImageView: UIImageView!
    
    @IBOutlet weak var addProfileImageView: UIImageView!
    
    @IBOutlet weak var editButton: UIButton!
    
    @IBOutlet weak var addFriendButton: UIButton!
    
    @IBOutlet weak var postingCountLabel: UILabel!
    
    @IBOutlet weak var followerCountLabel: UILabel!
    
    @IBOutlet weak var followingCountLabel: UILabel!
    
    
    
    
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        setupAttribute()
        // Initialization code
    }
    
    private func setupAttribute(){
        profileImageView.layer.cornerRadius = 88/2
        profileImageView.layer.borderColor = UIColor.darkGray.cgColor
        profileImageView.layer.borderWidth = 1
        
        addProfileImageView.layer.cornerRadius = 24/2
        
        //shift ctrl = 다중커서
        //shift option ctrl v 한번에 적용가능
        editButton.layer.cornerRadius = 5
        editButton.layer.borderColor = UIColor.lightGray.cgColor
        editButton.layer.borderWidth = 1
        
        addFriendButton.layer.cornerRadius = 3
        addFriendButton.layer.borderColor = UIColor.lightGray.cgColor
        addFriendButton.layer.borderWidth = 1
        
        [postingCountLabel, followerCountLabel, followingCountLabel].forEach{$0.text = "\(Int.random(in:0...10))"}
    }

}
