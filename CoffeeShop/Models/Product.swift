//
//  Coffee.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 2.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI

struct Product: Hashable, Codable,Identifiable {
    
    
    let id:Int
    let name:String
    fileprivate let imageName:String
    let price:Double
    var isFavorite:Bool
    
}

extension Product {
    var image: Image{
        ImageStore.shared.image(name: imageName)
    }
}
