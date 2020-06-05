//
//  MenuView.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 2.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI

struct ProductsView: View {
    
    @EnvironmentObject private var userData: UserData
    
    var body: some View {
    
        NavigationView{
            
            VStack(spacing: 60){
                
                HStack{
                    
                    NavigationLink(destination: ProductsList(barTitle: "İçecekler").environmentObject(self.userData)){
                        VStack{
                            ImageStore.shared.image(name: "caramel-macchiato")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                                
                            Text("İçecekler")
                                 .font(.title)
                                 .foregroundColor(Color(hex: "#FAFAFA"))
                                 .bold()
                       }
                    }

                    NavigationLink(destination: ProductsList(barTitle: "Kekler")){
                        VStack{
                            ImageStore.shared.image(name: "mozaik-kek")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                            
                            Text("Kekler")
                                .font(.title)
                                .foregroundColor(Color(hex: "#FAFAFA"))
                                .bold()
                        }
                    }
                    
                }
               
                HStack{
                    NavigationLink(destination: ProductsList(barTitle: "Sandviçler")){
                        VStack{
                            ImageStore.shared.image(name: "fiesta")
                                .renderingMode(.original)
                                .resizable()
                                .frame(width: 200, height: 200)
                                .cornerRadius(20)
                            
                            Text("Sandviçler")
                                .font(.title)
                                .foregroundColor(Color(hex: "#FAFAFA"))
                                .bold()
                        }
                    }
                    
                    NavigationLink(destination: ProductsList(barTitle: "Kurabiyeler")){
                        VStack{
                            ImageStore.shared.image(name: "triple-chocolate-cookie")
                                .renderingMode(.original)
                            .resizable()
                            .frame(width: 200, height: 200)
                            .cornerRadius(20)
                            
                            Text("Kurabiyeler")
                                .font(.title)
                                .foregroundColor(Color(hex: "#FAFAFA"))
                                .bold()
                        }
                    }
                }.navigationBarTitle("Ürünler", displayMode: .large)
                
            }.colorScheme(.dark)
        }.preferredColorScheme(.dark)
        
     
    }
}


