//
//  SweaterRow.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 24.09.2022.
//

import SwiftUI

struct SweaterRow: View {
    @EnvironmentObject var cartManager: CartManager
    var sweater: Sweater
    
    var body: some View {
        HStack(spacing: 20) {
            Image(sweater.image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 50)
                .cornerRadius(10)
            VStack(alignment: .leading, spacing: 10) {
                Text(sweater.name)
                    .bold()
                Text(String(sweater.price) + " rub")
            }
            Spacer()
            Image(systemName: "trash")
                .foregroundColor(.red)
                .onTapGesture {
                    cartManager.removeFromCart(sweater: sweater)
                }
        }
        .padding(.horizontal)
        .frame(maxWidth: .infinity, alignment: .leading)
    }
}

struct SweaterRow_Previews: PreviewProvider {
    static var previews: some View {
        SweaterRow(sweater: sweaterList[7]).environmentObject(CartManager())
    }
}
