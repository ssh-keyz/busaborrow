//
//  HomeView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import SwiftUI

struct HomeView: View {
    @EnvironmentObject var data: Data
    
    var body: some View {
        NavigationView {
            ScrollView {
                // Carousel header section
                Section {
                    TabView {
                        ForEach(data.itemCategories
                            .featured, id: \.id) { item in
                                FeaturedItemView(isHero: true)
                                    .environmentObject(item)
                            }
                    }
                    .tabViewStyle(PageTabViewStyle())
                    .aspectRatio(1, contentMode: .fit)
                }
                
                // Featured bikes section
                Section(header: SectionHeaderView(title: "Featured")) {
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ]) {
                        ForEach(data.itemCategories.forYou, id: \.id) { item in
                            ItemGridView()
                                .environmentObject(item)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
                
                
                // Recently added
                Section(header: SectionHeaderView(title: "Recently Added")) {
                    VStack(spacing: 0) {
                        ForEach(data.itemCategories.new, id: \.id) { item in
                            ItemCellView()
                                .environmentObject(item)
                        }
                    }
                    .padding(.bottom)
                }
                
                // Bikes under $100
                Section(header: SectionHeaderView(title: "Under $100")) {
                    LazyVGrid(columns: [
                        GridItem(.flexible(), spacing: 16),
                        GridItem(.flexible(), spacing: 16)
                    ]) {
                        ForEach(data.itemCategories.under100, id: \.id) { item in
                            ItemGridView()
                                .environmentObject(item)
                        }
                    }
                    .padding(.horizontal)
                    .padding(.bottom)
                }
            }
            .edgesIgnoringSafeArea(.top)
            .navigationTitle("Home")
            .navigationBarHidden(true)
        
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
            .environmentObject(Data())
    }
}

