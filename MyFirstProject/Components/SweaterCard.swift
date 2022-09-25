//
//  SweaterCard.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 22.09.2022.
//

import SwiftUI

struct SweaterCard: View {
    @EnvironmentObject var cartManager: CartManager
    var sweater: Sweater
    var body: some View {
        ZStack(alignment: .topTrailing) {
            ZStack(alignment: .bottom) {
                Image(sweater.image)
                    .resizable()
                    .cornerRadius(20)
                    .frame(width: 180)
                    .scaledToFit()
                VStack(alignment: .leading) {
                    Text(sweater.name)
                        .bold()
                    
                    Text(String(sweater.price) + " rub")
                        .font(.caption)
                }
                .padding()
                .frame(width: 180, alignment: .leading)
                .background(.ultraThinMaterial)
                .cornerRadius(20)
            }
            .frame(width: 180, height: 250)
            .shadow(radius: 3)
            
            Button {
                cartManager.addToCart(sweater: sweater)
            } label: {
                Image(systemName: "plus")
                    .padding(10)
                    .foregroundColor(.white)
                    .background(.black)
                    .cornerRadius(50)
                    .padding()
            }
        }
    }
}

struct SweaterCard_Previews: PreviewProvider {
    static var previews: some View {
        SweaterCard(sweater: sweaterList[7])
            .environmentObject(CartManager())
    }
}
