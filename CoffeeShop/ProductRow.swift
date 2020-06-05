//
//  DrinksRow.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 2.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI

struct ProductRow: View {
    
    var product:Product
    
    var body: some View {
                
        HStack(alignment: .center){
            
            product.image
                .resizable()
                .frame(width:120, height: 120)
                .cornerRadius(20)
            
            Text(product.name)
                .font(.title)
                .foregroundColor(Color(hex: "#4F48EC"))
                .bold()
            
            Spacer()
        
            if product.isFavorite {
                Image(systemName: "suit.heart.fill")
                    .imageScale(.large)
                    .foregroundColor(.red)
                    .padding()
            }
            
        }.background(Color(hex: "#FAFAFA"))
         .colorScheme(.dark)
         .cornerRadius(50)
        
    }
}


