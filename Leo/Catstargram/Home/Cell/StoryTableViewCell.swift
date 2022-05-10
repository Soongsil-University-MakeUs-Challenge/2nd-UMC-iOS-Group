//
//  StoryTableViewCell.swift
//  Catstargram
//
//  Created by 임영준 on 2022/04/15.
//

import UIKit

class StoryTableViewCell: UITableViewCell {

    @IBOutlet weak var cellectionView: UICollectionView!
    
    func setCollectionViewDataSourceDelegate(dataSoureDelegate : UICollectionViewDelegate & UICollectionViewDataSource, forRow row: Int){
        cellectionView.delegate = dataSoureDelegate
        cellectionView.dataSource = dataSoureDelegate
        cellectionView.tag = row
        let storyNib = UINib(nibName: "StoryCollectionViewCell", bundle: nil)
        cellectionView.register(storyNib, forCellWithReuseIdentifier: "StoryCollectionViewCell")
        
        let flowLayout = UICollectionViewFlowLayout()
        flowLayout.scrollDirection = .horizontal
        flowLayout.sectionInset = UIEdgeInsets(top: 0, left: 10, bottom: 0, right: 10)
        flowLayout.minimumLineSpacing = 12
        
        cellectionView.collectionViewLayout = flowLayout
        
        cellectionView.reloadData()
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
