//
//  CartCollectionViewCell.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 30/07/2023.
//

import UIKit

class CartCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var ImageCartCell: UIImageView!
    
    @IBOutlet weak var cateogriCartCell: UILabel!
    
    @IBOutlet weak var titleCartCell: UILabel!
    
    @IBOutlet weak var PriceCartCell: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

}
