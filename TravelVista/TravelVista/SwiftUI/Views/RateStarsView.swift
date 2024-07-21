//
//  RateStarsView.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 17/07/2024.
//

import SwiftUI

struct RateStarsView: View {
    var rate: Int
    
    var body: some View {
        HStack{
            ForEach(0..<rate, id: \.self) { _ in
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 15, height: 15)
                    .foregroundColor(.yellow)
            }
        }
    }
}

#Preview {
    RateStarsView(rate: 5)
}
