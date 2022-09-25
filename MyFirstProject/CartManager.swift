//
//  CartManager.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 22.09.2022.
//

import Foundation

class CartManager: ObservableObject {
    @Published private(set) var sweaters: [Sweater] = []
    @Published private(set) var total: Int = 0
    
    func addToCart(sweater: Sweater) {
        sweaters.append(sweater)
        total += sweater.price
    }
    
    func removeFromCart(sweater: Sweater) {
        sweaters = sweaters.filter { $0.id != sweater.id }
        total -= sweater.price
    }
}
