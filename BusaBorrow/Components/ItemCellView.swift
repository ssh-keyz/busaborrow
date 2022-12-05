//
//  ItemCelView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct ItemCellView: View {
    @EnvironmentObject var item: Item
    
    var body: some View {
        NavigationLink(destination: ItemDetailView().environmentObject(item), label: {
            HStack(spacing: 16) {
                AsyncImage(url: URL(string: item.photoURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                } placeholder: {
                    RoundedRectangle(cornerRadius: 12, style: .continuous)
                        .foregroundColor(Color(UIColor.secondarySystemFill))
                        .aspectRatio(1, contentMode: .fit)
                }
                .mask(RoundedRectangle(cornerRadius: 12, style: .continuous))
                .frame(width: 64, height: 64)
                
                VStack(alignment: .leading, spacing: 4) {
                    Text(item.name)
                        .lineLimit(1)
                        .font(.headline)
                    Text(item.formattedPrice())
                        .foregroundColor(.secondary)
                }
                
                Spacer()
            }
            .padding(.vertical, 8)
            .padding(.horizontal)
            .contentShape(Rectangle())
        })
        .buttonStyle(PlainButtonStyle())
    }
}

struct ItemCellView_Previews: PreviewProvider {
    static var previews: some View {
        ItemCellView()
            .environmentObject(Data())
            .environmentObject(Item(name: "Hayabusa", description: "Faster than you need it to be", price: 300.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-hayabusa.jpg?alt=media&token=230cccb6-8d6a-496d-833b-4b2897fcb620"))
    }
}
