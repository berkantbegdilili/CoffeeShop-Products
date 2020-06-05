//
//  UserData.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 5.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: ObservableObject {
    @Published var products: [Product] = productsData
}
