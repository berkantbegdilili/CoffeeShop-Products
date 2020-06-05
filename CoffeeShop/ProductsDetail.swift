//
//  ProductsDetail.swift
//  CoffeeShop
//
//  Created by Berkant Beğdilili on 4.06.2020.
//  Copyright © 2020 Berkant Beğdilili. All rights reserved.
//

import SwiftUI

struct ProductsDetail: View {
    @EnvironmentObject private var userData: UserData
    
    let product:Product
    
    var productIndex:Int{
        userData.products.firstIndex(where: { $0.id == product.id })!
    }
    
    var body: some View {
        
        GeometryReader { geometry in
            VStack{
                self.product.image
                    .resizable()
                    .frame(height: geometry.size.height/2)
                    .cornerRadius(5)
                    .edgesIgnoringSafeArea(.top)
                
                 Button(action: {
                    self.userData.products[self.productIndex].isFavorite.toggle()
                 }){
                        Image(systemName: "suit.heart.fill")
                            .resizable()
                            .frame(width: 50, height: 50)
                            .foregroundColor(self.userData.products[self.productIndex].isFavorite ? .red : .gray)
                            
                 }.buttonStyle(CircleButtonStyle())
                  .offset(x:125,y:-200)
                  .padding(.bottom,-130)
                    
    
                HStack{
                    Text(self.product.name)
                        .foregroundColor(Color(hex: "#4F48EC"))
                        .font(.largeTitle)
                        .bold()
                        .offset(y:-120)
                   
                    Spacer()
                    
                    
                }.padding()
                
             Spacer()
                }.colorScheme(.dark).navigationBarTitle("")
    
        }.preferredColorScheme(.dark)
        
        
    }
}

struct CircleButtonStyle: ButtonStyle {
    func makeBody(configuration: Self.Configuration) -> some View {
        configuration.label
            .padding()
            .modifier(MakeSquareBounds())
            .background(Circle().fill(Color.white))
            .scaleEffect(configuration.isPressed ? 0.9 : 1.0)

    }
}

struct MakeSquareBounds: ViewModifier {

    @State var size: CGFloat = 1000
    func body(content: Content) -> some View {
        let c = ZStack {
            content.alignmentGuide(HorizontalAlignment.center) { (vd) -> CGFloat in
                DispatchQueue.main.async {
                    self.size = max(vd.height, vd.width)
                }
                return vd[HorizontalAlignment.center]
            }
        }
        return c.frame(width: size, height: size)
    }
}


