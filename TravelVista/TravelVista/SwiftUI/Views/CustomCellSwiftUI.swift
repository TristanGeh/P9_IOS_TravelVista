//
//  CustomCellSwiftUI.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 22/07/2024.
//

import SwiftUI

struct CustomCellSwiftUI: View {
    var country: Country
    
    var body: some View {
        HStack {
            HStack {
                Image(country.pictureName)
                    .resizable()
                    .frame(width: 50, height: 50)
                .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(country.name)
                        .foregroundColor(.blue)
                        .font(.system(size: 20))
                    Text(country.capital)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                }
            }
            Spacer()
            HStack {
                Text("\(country.rate)")
                Image(systemName: "star.fill")
                    .resizable()
                    .frame(width: 32, height: 32)
                    .foregroundColor(Color(.customSand))
            }
        }
    }
}

