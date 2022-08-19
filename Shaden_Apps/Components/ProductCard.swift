//
//  ProductCard.swift
//  Shaden_Apps
//
//  Created by Shaden Almuhaidib on 18/08/2022.
//

import SwiftUI


struct ProductCard: View {
    
    var product: Product

    var body: some View {
        
        ZStack(alignment: .bottom){
            Image(product.image)
                .resizable()
                .cornerRadius(50)
                .frame(width: 350)
                .scaledToFit()
            
            VStack(alignment: .leading){
                Text(product.name)
                    .bold()
            }
            .padding()
            .frame(width: 350, height: 80, alignment: .leading)
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            
        }
        .frame(width: 350, height: 420)
        .shadow(radius: 3)
    
    }
}


struct ProductCard_Previews: PreviewProvider {
    static var previews: some View {
        ProductCard(product : productList[0])
    }
}
