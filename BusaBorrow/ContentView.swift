//
//  ContentView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var data: Data
    var body: some View {
        TabView {
            HomeView()
                .tabItem {
                    Label("Home", systemImage: "house")
                }

            SearchView()
                .tabItem {
                    Label("Search", systemImage: "magnifyingglass")
                }
            
            CartView()
                .tabItem {
                    Label("Cart", systemImage: "cart")
                }
                .badge(data.cart.count)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
