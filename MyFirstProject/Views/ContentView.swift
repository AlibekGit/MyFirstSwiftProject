//
//  ContentView.swift
//  MyFirstProject
//
//  Created by Алибек Балтабай on 21.09.2022.
//

import SwiftUI

struct ContentView: View {
    @StateObject var cartManager = CartManager()
    var columns = [GridItem(.adaptive(minimum: 160), spacing: 20)]
    
    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(sweaterList, id: \.id) {sweater in
                        SweaterCard(sweater: sweater)
                            .environmentObject(cartManager)
                    }
                }
                .padding()
            }
            .navigationTitle("Sweater Shop")
            .toolbar {
                NavigationLink {
                    CartView()
                        .environmentObject(cartManager)
                } label: {
                    CartButton(numberOfProducts: cartManager.sweaters.count)
                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
    }

}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
