//
//  DrinksList.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 2.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI


struct ProductsList: View {
    
    @EnvironmentObject private var userData:UserData
    
    @State var data:[Product] = [Product]()
    
    let barTitle:String

    var body: some View {
        
        HStack(){
        
            List{
                ForEach(data) { product in
                     
                    NavigationLink(destination: ProductsDetail(product: product)
                        .environmentObject(self.userData)){
                            ProductRow(product: product)
                                .padding(.bottom, 20)
                    }.buttonStyle(PlainButtonStyle())
                }
                
                
            }.colorScheme(.dark)
             .navigationBarTitle(Text(barTitle),displayMode: .automatic)
               
            
        }.preferredColorScheme(.dark)
         .onAppear(){
            if self.barTitle == "İçecekler"{
                self.data = self.userData.products.filter({ $0.id < 2000 })
            }
            
            if self.barTitle == "Kekler"{
                self.data = self.userData.products.filter({ $0.id < 4000 && $0.id >= 3000 })
            }
            
            if self.barTitle == "Kurabiyeler"{
                self.data = self.userData.products.filter({ $0.id < 3000 && $0.id >= 2000 })
            }
            
            if self.barTitle == "Sandviçler"{
                self.data = self.userData.products.filter({ $0.id < 5000 && $0.id >= 4000 })
            }
         }
    
    }
}
