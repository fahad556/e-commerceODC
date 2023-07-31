//
//  HomeViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//
import SDWebImage
import UIKit
class HomeViewController: UIViewController,UICollectionViewDelegateFlowLayout,UICollectionViewDataSource,UICollectionViewDelegate {
    
    @IBOutlet weak var changeMe: UILabel!
    var proudectArr:[Mainproduct] = []
    var fechApi = NetworkManager()
    var changeProdect:[Mainproduct] = []
    var changeProdectDress:[Mainproduct] = []
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        // get a reference to our storyboard cell
        
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "Prodectcell", for: indexPath) as! HomeViewCell
        
        cell.TitleProdect.text = proudectArr[indexPath.row].category
        cell.ImageProdect.sd_setImage(with: URL(string:proudectArr[indexPath.row].image))
        let pric = proudectArr[indexPath.row].price
        cell.PriceProdect.text = String(pric)

        
        
        return cell
        
    }
    
    



    @IBOutlet weak var ProdectCollection: UICollectionView!
    
    @objc func tickButtonClicked( sender: UIButton){
        
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        ProdectCollection.delegate = self
        ProdectCollection.dataSource = self
        fechApi.getData { error, proudectArr in
            if let safeProudects = proudectArr {
                self.proudectArr =  safeProudects

                DispatchQueue.main.async {

                    self.ProdectCollection.reloadData()
                }
                
            }
            if let e = error {
                print(e.self)
            }
        }

        
        let nipName = UINib(nibName: "HomeViewCell", bundle: nil)
        self.ProdectCollection.register(nipName, forCellWithReuseIdentifier: "Prodectcell")
 
    }
    
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        
        
        return proudectArr.count
        
    }
    
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 200, height:200 )
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {

        let vc = UIStoryboard(name:"Main", bundle:nil).instantiateViewController(withIdentifier: "detailsID") as!detailsViewController
        vc.lablTiltle = proudectArr[indexPath.row].title
        vc.labldecriptionItem = proudectArr[indexPath.row].description
        vc.lablCategorie = proudectArr[indexPath.row].category
        vc.lablpricedetails = proudectArr[indexPath.row].price
        vc.lablimage = proudectArr[indexPath.row].image
        navigationController?.pushViewController(vc, animated: true)
        
    }
    
}


