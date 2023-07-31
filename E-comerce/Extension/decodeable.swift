//
//  decodeable.swift
//  E-comerce
//
//  Created by fahd saaad mohamed on 31/07/2023.
//

import Foundation

struct JSON {
    static let encoder = JSONEncoder()
}

extension Encodable {
    
    var dictionary: [String: Any] {
        let data = (try? JSON.encoder.encode(self)) ?? Data()
        return (try? JSONSerialization.jsonObject(with: data, options: .mutableContainers) as? [String: Any]) ?? [:]
    }
    
}
