//
//  CartView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct CartView: View {
    @EnvironmentObject var data: Data
    @State var showCheckoutView = false
    
    var body: some View {
        NavigationView {
            ZStack {
                // Show user cart icon if empty cart
                if data.cart.count == 0 {
                    VStack(spacing: 12) {
                        Spacer()
                        Image(systemName: "cart")
                            .font(.largeTitle)
                        Text("Your cart is empty")
                            .font(.headline)
                        Spacer()
                    }
                    .foregroundColor(.secondary)
                } else {
                    List {
                        Section {
                            ForEach(data.cart, id: \.id) { item in
                                ItemCellView()
                                    .environmentObject(item)
                                    .listRowSeparator(.hidden)
                            }
                            .onDelete(perform: delete)
                        }
                        .listRowInsets(EdgeInsets(top: 0, leading: 0, bottom: 0, trailing: 16))
                        
                        Section {
                            VStack(spacing: 8) {
                                HStack {
                                    Text("Tax")
                                    Spacer()
                                    Text("$0.00")
                                }
                                .foregroundColor(.secondary)
                                
                                HStack {
                                    Text("Subtotal")
                                    Spacer()
                                    Text(data.cartTotal())
                                }
                                .foregroundColor(.secondary)
                                
                                HStack {
                                    Text("Total")
                                        .font(.headline)
                                    Spacer()
                                    Text(data.cartTotal())
                                        .font(.headline)
                                }
                            }
                        }
                        .listRowSeparator(.hidden)
                        .padding(.vertical)
                        
                        Section {
                            Spacer()
                            Button(action: { self.showCheckoutView = true }, label: {
                                HStack {
                                    Spacer()
                                    Text("Checkout")
                                        .font(.headline)
                                    Spacer()
                                }
                                .padding(.vertical, 6)
                            })
                            .buttonStyle(BorderedProminentButtonStyle())
                            .sheet(isPresented: $showCheckoutView) {
                                CheckoutView()
                                    .environmentObject(data)
                            }
                        }
                        .listRowSeparator(.hidden)
                    }
                    .listStyle(.plain)
                }
            }
            .navigationTitle("Cart")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    if(data.cart.count > 0) {
                        EditButton()
                    }
//                    data.cart.count > 0 ? EditButton() : nil
                }
            }
        }
        .navigationViewStyle(.stack)
    }
    
    func delete(at offsets: IndexSet) {
        data.cart.remove(atOffsets: offsets)
    }
}

struct CartView_Previews: PreviewProvider {
    static var previews: some View {
        CartView()
            .environmentObject(Data())
    }
}
