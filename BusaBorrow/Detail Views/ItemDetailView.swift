//
//  ItemDetailView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct ItemDetailView: View {
    @EnvironmentObject var data: Data
    @EnvironmentObject var item: Item
    
    var body: some View {
        List {
            Section {
                // AsyncImage  https://developer.apple.com/documentation/swiftui/asyncimage
                AsyncImage(url: URL(string: item.photoURL)) { image in
                    image
                        .resizable()
                        .aspectRatio(1, contentMode: .fit)
                } placeholder: {
                    ProgressView()
                }
                .aspectRatio(1, contentMode: .fit)
                .listRowInsets(EdgeInsets())
                .listRowSeparator(.hidden)
            }
            
            Section {
                VStack(alignment: .leading, spacing: 2) {
                    Text(item.name)
                        .font(.title)
                        .fontWeight(.bold)
                    Text(item.formattedPrice())
                        .font(.title)
                        .foregroundColor(.secondary)
                    Spacer()
                }
                .padding(.top)
                
                Button(action: { data.addItemToCart(item) }, label: {
                    HStack {
                        Spacer()
                        Text("Add to Cart")
                            .font(.headline)
                        Spacer()
                    }
                    .padding(.vertical, 6)
                })
                .buttonStyle(BorderedProminentButtonStyle())
                .disabled(data.itemAlreadyInCart(item.id))
                
                Text(item.description)
                    .padding(.top)
            }
            .listRowSeparator(.hidden)
            
            Section(header: Text("Features")) {
                Label("Top speed of 147 mph", systemImage: "mph")
                Label("Driver lane assist", systemImage: "steeringwheel.road.lane.dashed")
                Label("Intelligent braking system", systemImage: "abs")
                    .padding(.bottom)
            }
            .listRowSeparator(.hidden)
        }
        .listStyle(.plain)
        .navigationTitle(item.name)
        .navigationBarTitleDisplayMode(.inline)
        .toolbar {
            ToolbarItem(placement: .navigationBarTrailing) {
                Button(action: share, label: { Image(systemName: "square.and.arrow.up").font(.headline) })
                    .sheet(isPresented: .constant(false)) {
                    EmptyView()
                }
            }
        }
    }
    
    func share() {
        // TODO - Create meaningful link instead of just sharing title
        let activityVC = UIActivityViewController(activityItems: [item.name], applicationActivities: nil)
        guard let windowScene = UIApplication.shared.connectedScenes.first as? UIWindowScene else { return }
        windowScene.keyWindow?.rootViewController?.present(activityVC, animated: true, completion: nil)
   }
}

struct ItemDetailView_Previews: PreviewProvider {
    static var previews: some View {
        ItemDetailView()
            .environmentObject(Data())
            .environmentObject(Item(name: "Hayabusa", description: "Faster than you need it to be", price: 300.00, photoURL: "https://firebasestorage.googleapis.com/v0/b/busaborrow-ca36b.appspot.com/o/suzuki%2Fsuzuki-hayabusa.jpg?alt=media&token=230cccb6-8d6a-496d-833b-4b2897fcb620"))
    }
}
