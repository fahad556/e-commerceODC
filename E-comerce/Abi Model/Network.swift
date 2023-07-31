//
//  Network.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//

import Foundation
class NetworkManager{
    func getData ( completion: @escaping(_ error: Error?, _ proudectArr: [Mainproduct]?) -> Void) {
        
        if let url = URL(string: "https://fakestoreapi.com/products") {
            let request = URLRequest(url: url)
            
            let session = URLSession(configuration: .default)
            let task =  session.dataTask   (with: request){
                (data, response, error) in
                if error != nil{
                    completion(error,nil)
                    return
                }
                if let safeData = data {
                    if let Mainproducts =  self.parseJSON(safeData){
                        
                        completion(nil,Mainproducts)
                    }
                    
                }
            }
            task.resume()
        } else {
            //invalid url
        }
        
    }
    // this function to convert data from(data) to our Model
    private func parseJSON(_ ProudectsData : Data) -> Mainproducts? {
        let decoder = JSONDecoder()
        do{
            let decodedData = try decoder.decode([Mainproduct].self, from: ProudectsData)
            return decodedData
            
        } catch {
            
            return nil
        }
    }
    
}
