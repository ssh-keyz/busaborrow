//
//  FeaturedItemView.swift
//  BusaBorrow
//
//  Created by Jesse Heslop.
//

import Foundation
import SwiftUI

struct FeaturedItemView: View {
    @EnvironmentObject var item: Item
    var isHero = false
    
    var body: some View {
        NavigationLink(destination: ItemDetailView().environmentObject(item), label: {
            ZStack(alignment: .topLeading) {
                AsyncImage(url: URL(string: item.photoURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                } placeholder: {
                    ProgressView()
//                    Rectangle()
//                        .foregroundColor(Color(UIColor.secondarySystemFill))
                }
                
                // Linear Gradient to make our title easier to read
                
                LinearGradient(gradient: Gradient(colors: [Color(UIColor.black.withAlphaComponent(0.7)), Color.clear]), startPoint: .top, endPoint: .bottom)
                
                VStack(alignment: .leading, spacing: 2) {
                    Text(item.name)
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    Text(item.formattedPrice())
                        .font(.title)
                        .foregroundColor(.white.opacity(0.8))
                    Spacer()
                }
                .padding(24)
                .padding(.top, isHero ? 44 : 0)
            }
        })
//        .buttonStyle(PlainButtonStyle())
        .buttonStyle(CustomButtonStyle())
    }
}

struct CustomButtonStyle: ButtonStyle {
    // Overly complex way of removing the default button flash on tap
    // for our carousel
    // https://developer.apple.com/documentation/swiftui/togglestyle/makebody(configuration:)
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}

struct FeaturedItemView_Previews: PreviewProvider {
    static var previews: some View {
        FeaturedItemView()
    }
}
