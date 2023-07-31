//
//  CategorieViewController.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//

import UIKit
import SDWebImage
class CategorieViewController: UIViewController,UICollectionViewDelegate,UICollectionViewDataSource,UICollectionViewDelegateFlowLayout{
    
    @IBOutlet weak var CategoriesProdect: UICollectionView!
    var proudectArr:[Mainproduct] = []
    var changeProdect:[Mainproduct] = []
    var fechApi = NetworkManager()
    var changeData:[String] = []
    
    @IBAction func Mans(_ sender: Any) {
        for i in proudectArr{
            if (i.category == "Man's"){
                changeProdect.append(i)
            }
        }
        proudectArr = changeProdect
        
    }
    
    @IBAction func jewelery(_ sender: Any) {
        proudectArr.removeAll()
        for i in proudectArr{
            if (i.category == "jewelery"){
                changeProdect.append(i)
            }
        }
        proudectArr = changeProdect
    }
    
    @IBAction func electronics(_ sender: Any) {
        for i in proudectArr{
            if (i.category == "electronics"){
                changeProdect.append(i)
            }
        }
        proudectArr = changeProdect
    }
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        
        return 1
        
    }
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return proudectArr.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "CategoriCell", for: indexPath) as! CategorieViewCell

        cell.imgeProdect.sd_setImage(with: URL(string:proudectArr[indexPath.row].image))
        cell.NameProdect.text = proudectArr[indexPath.row].category
        print(cell)
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        CategoriesProdect.delegate = self
        CategoriesProdect.dataSource = self
        fechApi.getData { error, proudectArr in
            //the data is optional i must make if let to use the variable witout optional
            if let safeProudects = proudectArr {
                self.proudectArr =  safeProudects
                
                //use it to update any ui in backround thread
                DispatchQueue.main.async {
                    //to recall count and cell function after data come and redraw the tabel
                    
                    self.CategoriesProdect.reloadData()
                    // self.CategoriesProdect.refreshControl?.endRefreshing()
                }
                
            }
            if let e = error {
                print(e.localizedDescription)
            }
        }
        let nipName = UINib(nibName: "CategorieViewCell", bundle: nil)
        self.CategoriesProdect.register(nipName, forCellWithReuseIdentifier: "CategoriCell")
       
    }
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: 150, height:150 )
    }

    
    // func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
    //     return 100
    // }
    
}
