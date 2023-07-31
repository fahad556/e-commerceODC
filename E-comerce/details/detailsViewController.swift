//
//  detailsViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 29/07/2023.
//

import UIKit
import SDWebImage
class detailsViewController: UIViewController {
    
    
    var cartModel2 = [CartModel]()
    
    var lablpricedetails:Double = 0
    var labldecriptionItem = ""
    var lablCategorie = ""
    var lablimage = ""
    var lablTiltle = ""
    @IBOutlet weak var imageDetails: UIImageView!
    
    @IBOutlet weak var Categorie: UILabel!
   
    
    @IBOutlet weak var titledetils: UILabel!
    
    
    @IBOutlet weak var decriptionItem: UILabel!
    
    @IBOutlet weak var pricedetails: UILabel!
    
    

    @IBAction func AddToCart(_ sender: Any) {
        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "CartID") as!CartViewController
        
        
        print("vc.cartArr")
      
        
        
        navigationController?.pushViewController(vc, animated: true)
        print(CartModel(price: lablpricedetails, title: lablTiltle, category: lablCategorie))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titledetils.text = lablTiltle
        imageDetails.sd_setImage(with: URL(string:lablimage))
        decriptionItem.text = labldecriptionItem
        Categorie.text = lablCategorie
        pricedetails.text = String(lablpricedetails)
    }
    


}
