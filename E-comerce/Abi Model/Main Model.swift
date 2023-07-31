//
//  Main Model.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 22/07/2023.
//
import Foundation
struct Mainproduct: Decodable {
    var id: Int
    var title: String
    var price: Double
    var description: String
    var category: String
    var image: String
    var rating: Rating
}

//struct Category: Decodable {
////let electronics :String
//  let jewelery :String
//   let menSClothing :String
//   let womenSClothing :String
//}
struct Rating: Decodable {
    var rate: Double
    var count: Int
}

typealias Mainproducts = [Mainproduct]



struct CartModel{
    var price:Double
    var title:String
    var category:String
}
typealias CartModels = [CartModel]
