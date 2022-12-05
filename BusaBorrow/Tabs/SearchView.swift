//
//  SearchView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct SearchView: View {
    @EnvironmentObject var data: Data
    @State var searchQuery = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                if searchQuery != "" {
                    if filteredResults().count > 0 {
                        ScrollView {
                            Section(header: SectionHeaderView(title: "Results")) {
                                VStack(spacing: 0) {
                                    ForEach(filteredResults(), id: \.id) { item in
                                        ItemCellView()
                                            .environmentObject(item)
                                    }
                                }
                                .padding(.bottom)
                            }
                        }
                    } else {
                        VStack(spacing: 12) {
                            Image(systemName: "magnifyingglass")
                                .font(.largeTitle)
                            Text("No results")
                                .font(.headline)
                        }
                        .foregroundColor(.secondary)
                    }
                } else {
                    VStack(spacing: 12) {
                        Spacer()
                        Image(systemName: "magnifyingglass")
                            .font(.largeTitle)
                        Text("Search")
                            .font(.headline)
                        Spacer()
                    }
                    .foregroundColor(.secondary)
                }
            }
            .navigationTitle("Search")
            .navigationBarTitleDisplayMode(.inline)
            .searchable(text: $searchQuery, placement: .navigationBarDrawer(displayMode: .always))
        }
        .navigationViewStyle(.stack)
    }
    
    func filteredResults() -> [Item] {
        return self.data.items.filter { $0.name.lowercased().contains(self.searchQuery.lowercased()) || $0.description.lowercased().contains(self.searchQuery.lowercased()) }
    }
}

struct SearchView_Previews: PreviewProvider {
    static var previews: some View {
        SearchView()
            .environmentObject(Data())
    }
}
