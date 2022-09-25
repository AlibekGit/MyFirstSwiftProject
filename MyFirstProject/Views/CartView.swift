//
//  CartView.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 22.09.2022.
//

import SwiftUI

struct CartView: View {
    @EnvironmentObject var cartManager: CartManager
    var columns = [GridItem(.flexible())]
    var body: some View {
        ScrollView {
            if(cartManager.sweaters.count > 0) {
                ForEach(cartManager.sweaters, id: \.id) {sweater in
                    SweaterRow(sweater: sweater)
                }
                
                HStack {
                    Text("Your Cart Total Is")
                    Spacer()
                    Text("$\(cartManager.total)")
                        .bold()
                }
                .padding()
            } else {
                Text("Your Cart Is Empty")
            }
        }
        .navigationTitle(Text("My Cart"))
        .padding(.top)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(CartManager())
    }
}
