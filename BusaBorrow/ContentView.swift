//
//  ContentView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import SwiftUI

struct SheetView: View {
    @Environment(\.dismiss) var dismiss

    var body: some View {
        VStack {
            VStack(spacing: 4) {
                ZStack {
                    LinearGradient(gradient: Gradient(colors: [.cyan, .blue]), startPoint: .top, endPoint: .bottom)
                        .mask { RoundedRectangle(cornerRadius: 18, style: .continuous) }
                        .shadow(color: .black.opacity(0.1), radius: 8, x: 0, y: 4)
                    Image(systemName: "checkerboard.rectangle")
                        .imageScale(.large)
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(.white)
                        .font(.largeTitle.weight(.light))
                        .rotationEffect(.degrees(0), anchor: .center)
                        .shadow(color: .black.opacity(0.25), radius: 2, x: 0, y: 3)
                }
                .frame(width: 80, height: 80)
                .clipped()
                .padding(.bottom, 8)
                Text("Lean in when life throws you a curve.")
                    .font(Font(UIFont.systemFont(ofSize: 28, weight: .semibold, width: .condensed)))
                    .multilineTextAlignment(.center)
                    .fixedSize(horizontal: false, vertical: true)
                Text("Rent from your favorite manufacturers at a fraction of the price. ")
                    .font(.footnote.weight(.medium))
                    .frame(width: 280)
                    .clipped()
                    .multilineTextAlignment(.center)
                    .foregroundColor(.secondary)
            }
            .fixedSize(horizontal: false, vertical: true)
            .padding(.top, 48)
            .padding(.bottom, 32)
            VStack(spacing: 24) {
                HStack {
                    Image(systemName: "engine.combustion")
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(.blue)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Engine sizes for all rider skill levels")
                            .font(.footnote.weight(.semibold))
                        Text("We offer all displacement sizes starting at 50 CC all the way up to 2000 CC. ")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "dollarsign")
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(.blue)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Rent daily or save with weekly pricing")
                            .font(.footnote.weight(.semibold))
                        Text("One canyon run wasn’t enough for you? Upgrade from a daily to weekly rental instantly.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
                HStack {
                    Image(systemName: "hare")
                        .symbolRenderingMode(.monochrome)
                        .foregroundColor(.blue)
                        .font(.title.weight(.regular))
                        .frame(width: 60, height: 50)
                        .clipped()
                    VStack(alignment: .leading, spacing: 3) {
                        Text("Pickup and drop-off whenever")
                            .font(.footnote.weight(.semibold))
                        Text("Our intuitive bike lock stations operate independently at all hours of the night.")
                            .font(.footnote)
                            .foregroundColor(.secondary)
                    }
                    .fixedSize(horizontal: false, vertical: true)
                    Spacer()
                }
            }
            Spacer()
            HStack {
                Spacer()
                Button("Rent Now"){
                    dismiss()
                }
                Spacer()
            }
            .foregroundColor(.white)
            .font(.callout.weight(.semibold))
            .padding()
            .frame(maxWidth: .infinity)
            .clipped()
            .background(.blue)
            .mask { RoundedRectangle(cornerRadius: 16, style: .continuous) }
        }
        .frame(maxWidth: .infinity)
        .clipped()
        .padding(.top, 53)
        .padding(.bottom, 60)
        .padding(.horizontal, 29)
    }
}


struct ContentView: View {
    @EnvironmentObject var data: Data
    @State private var showingSheet = true
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
        .sheet(isPresented: $showingSheet) {
            SheetView()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
