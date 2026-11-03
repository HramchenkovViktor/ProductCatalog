//
//  ProductList.swift
//  ProductCatalog
//
//  Created by Виктор on 03.11.2026.
//

import UIKit

struct Product: Decodable {
    let name: String
    let price: Int
    let inStock: Bool
    
    
    enum CodingKeys: String, CodingKey {
        case inStock = "in_stock"
        case name = "name"
        case price = "price"
 
    }
}
