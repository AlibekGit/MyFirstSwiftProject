//
//  Sweater.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 22.09.2022.
//

import Foundation


struct Sweater : Identifiable {
    var id = UUID()
    var name: String
    var image: String
    var price: Int
}


var sweaterList = [
    Sweater(name: "Big Gray Sweety Sweater", image: "sweater1", price: 20000),
    Sweater(name: "Short Handed Sweater", image: "sweater2", price: 15000),
    Sweater(name: "Green Ligther Sweater", image: "sweater3", price: 21000),
    Sweater(name: "Green Sweater", image: "sweater4", price: 25000),
    Sweater(name: "Purple Sweater", image: "sweater5", price: 30000),
    Sweater(name: "Snow Sweater", image: "sweater6", price: 13000),
    Sweater(name: "White Sweety Sweater", image: "sweater7", price: 10000),
    Sweater(name: "Big Red Sweety Sweater", image: "sweater8", price: 22000)
]
