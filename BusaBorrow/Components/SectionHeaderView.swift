//
//  SectionHeaderView.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import Foundation
import SwiftUI

struct SectionHeaderView: View {
    @State var title: String
    
    var body: some View {
        HStack {
            Text(title)
                .font(.subheadline)
                .fontWeight(.semibold)
                .foregroundColor(.primary)
            Spacer()
        }
        .padding(.top)
        .padding(.horizontal)
    }
}

struct SectionHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        SectionHeaderView(title: "Title")
    }
}
