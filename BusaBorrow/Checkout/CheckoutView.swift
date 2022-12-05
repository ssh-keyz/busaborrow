//
//  CheckoutView.swift
//  BusaBorrow
//
//  Created by Jesse Heslop.
//

import Foundation
import SwiftUI
import UIKit
import PassKit

struct CheckoutView: View {
    @Environment(\.presentationMode) var presentationMode
    @EnvironmentObject var data: Data
    
    var body: some View {
        NavigationView {
            ZStack {
                List {
                    Section(footer: Text("\nBy checking out, I agree to the terms and conditions provided by BusaBorrow.\n\nAdditionally, I declare that my insurance provides coverage upon total loss of vehicle or I otherwise claim full liability over the costs associated with damage to the rental.\n\nBusaBorrow is not responsible for any damage caused to property or persons involved within the duration of this contract.\n\nPlease ride responsibly.")) {
                        HStack(alignment: .top) {
                            Text("Delivery")
                                .font(.headline)
                            Spacer()
                            Text("""
                                 1600 Holloway Ave\nSan Francisco, CA 94117\n
                                 Arrives by Tue, Jan 4
                                 """)
                                .multilineTextAlignment(.trailing)
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 8)
                        
                        HStack {
                            Text("Payment")
                                .font(.headline)
                            Spacer()
                            Text("Apple Pay")
                                .foregroundColor(.secondary)
                        }
                        .padding(.vertical, 8)
                        
                        HStack {
                            Text("Total")
                                .font(.headline)
                            Spacer()
                            Text(data.cartTotal())
                                .font(.headline)
                        }
                        .padding(.vertical, 8)
                    }
                }
                
                VStack {
                    Spacer()
                    ApplePayButton()
                        .frame(height: 40)
                        .padding(.horizontal)
                }
                .padding(.bottom)
            }
            .toolbar {
                ToolbarItem(placement: .navigationBarLeading) {
                    Button(action: { presentationMode.wrappedValue.dismiss() }) {
                        Text("Cancel")
                    }
                }
            }
            .navigationTitle("Checkout")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

struct ApplePayButton: UIViewRepresentable {
    func makeUIView(context: Context) -> PKPaymentButton {
        return PKPaymentButton(paymentButtonType: .buy, paymentButtonStyle: .automatic)
    }

    func updateUIView(_ uiView: PKPaymentButton,
         context: UIViewRepresentableContext<ApplePayButton>) {
    }
}

struct CheckoutView_Previews: PreviewProvider {
    static var previews: some View {
        CheckoutView()
    }
}
