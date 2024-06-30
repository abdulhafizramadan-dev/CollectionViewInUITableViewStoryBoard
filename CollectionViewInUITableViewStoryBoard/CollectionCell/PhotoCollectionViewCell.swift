//
//  PhotoCollectionViewCell.swift
//  CollectionViewInUITableViewStoryBoard
//
//  Created by Abdul Hafiz Ramadan on 30/06/24.
//

import UIKit

class PhotoCollectionViewCell: UICollectionViewCell {
    
    static let identifier = "PhotoCollectionViewCell"
    
    static func nib() -> UINib {
        return UINib(nibName: identifier, bundle: nil)
    }
    
    @IBOutlet var textLabel: UILabel!
    @IBOutlet var photo: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    func configure(with model: PhotoModel) {
        textLabel.text = model.name
        photo.image = UIImage(named: model.photo)
        photo.contentMode = .scaleAspectFill
    }
}
