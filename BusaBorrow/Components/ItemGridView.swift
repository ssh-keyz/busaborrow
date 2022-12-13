//
//  ItemGridView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct ItemGridView: View {
    @EnvironmentObject var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemDetailView().environmentObject(item)) {
            VStack(alignment: .leading, spacing: 8) {
                AsyncImage(url: URL(string: item.photoURL)) { phase in
                    switch phase {
                    case .empty:
                        ZStack {
                            RoundedRectangle(cornerRadius: 12, style: .continuous)
                                .foregroundColor(Color(UIColor.secondarySystemFill))
                                .aspectRatio(1, contentMode: .fit)
                            ProgressView()
                                .progressViewStyle(.circular)
                        }
                    case .success(let image):
                        image
                            .resizable()
                            .aspectRatio(1, contentMode: .fit)
                    case .failure(_):
                        ZStack {
                            RoundedRectangle(cornerRadius: 12)
                                .fill(Color.red)
                            Image(systemName: "wifi.slash")
                        }
                        
                    @unknown default:
                        EmptyView()
                    }
                }
                .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                VStack(alignment: .leading, spacing: 2) {
                    Text(item.name)
                        .fontWeight(.semibold)
                        .lineLimit(1)
                        .font(.subheadline)
                    Text(item.formattedPrice().appending("/day"))
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                }
            }
            .padding(.vertical, 6)
            .contentShape(Rectangle())
        }
        .buttonStyle(PlainButtonStyle())
    }
}

struct ItemGridView_Previews: PreviewProvider {
    static var previews: some View {
        ItemGridView()
            .environmentObject(Data())
            .environmentObject(Item(name: "Hayabusa", description: "Faster than you need it to be", price: 300.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-hayabusa.jpg?alt=media&token=230cccb6-8d6a-496d-833b-4b2897fcb620"))
    }
}
