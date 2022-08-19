//
//  Product.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 18/08/2022.
//

import Foundation

struct Product: Identifiable {
    var id = UUID()
    var name: String
    var image: String
}

var productList = [Product(name: "Easy Trip", image: "P1"),
                   Product(name: "Easy Trip", image: "P2"),
                   Product(name: "Easy Trip", image: "P3"),
                   Product(name: "Easy Trip", image: "P4"),
                   Product(name: "Easy Trip", image: "P5")]

