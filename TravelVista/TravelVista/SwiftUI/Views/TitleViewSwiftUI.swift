//
//  TitleViewSwiftUI.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 17/07/2024.
//

import SwiftUI

struct TitleViewSwiftUI: View {
    var country: String
    var capital: String
    var rate: Int

    var body: some View {
        HStack {
            VStack(alignment: .leading) {
                Text(country)
                    .foregroundColor(.customBlue)
                    .font(.system(size: 22, weight: .medium))
                Text(capital)
                    .foregroundColor(Color(.darkGray))
                    .font(.system(size: 17))
            }
            Spacer()
            RateStarsView(rate: rate)
        }
        .padding()
    }
}

#Preview {
    TitleViewSwiftUI(country: "France", capital: "Paris", rate: 5)
}
