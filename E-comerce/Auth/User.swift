//
//  User.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 31/07/2023.
//

import Foundation
struct User: Codable {
    var id: String?
    var username: String?
    var email: String?
    var cart: [Int : Int]?
    var wishList: [Int: Int]?
}
