//
//  HomeViewCell.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//

import UIKit

class HomeViewCell: UICollectionViewCell {

    @IBOutlet weak var ImageProdect: UIImageView!
    
    @IBOutlet weak var TitleProdect: UILabel!
    
    
    @IBOutlet weak var PriceProdect: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    //// func config(with title:String){
    //      TitleProdect.setTitle(title, for: .normal)
    //  }
}
