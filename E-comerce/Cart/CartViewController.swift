//
//  CartViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//

import UIKit

class CartViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    var cartArr = [CartModel]()
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 190, height:190 )
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        cartArr.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CartID2", for: indexPath) as! CartCollectionViewCell
        cell.titleCartCell.text = cartArr[indexPath.row].title
        print(cartArr)
        return cell
    }
    

    @IBOutlet weak var CartCollection: UICollectionView!
    override func viewDidLoad() {
        super.viewDidLoad()
        CartCollection.delegate = self
        CartCollection.dataSource = self
        print(cartArr)
        print("cartArr")
        let nipName = UINib(nibName: "artCollectionViewCell", bundle: nil)
        self.CartCollection.register(nipName, forCellWithReuseIdentifier: "CartID2")
        DispatchQueue.main.async {
            //to recall count and cell function after data come and redraw the tabel
            
            self.CartCollection.reloadData()
        }
    }
    


}
