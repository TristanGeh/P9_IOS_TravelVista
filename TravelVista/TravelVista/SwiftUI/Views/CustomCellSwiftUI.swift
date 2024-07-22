//
//  CustomCellSwiftUI.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 22/07/2024.
//

import SwiftUI

struct CustomCellSwiftUI: View {
    var pictureName: String
    var name: String
    var capital: String
    var rate: Int
    
    var body: some View {
        HStack {
            HStack {
                Image(pictureName)
                    .resizable()
                    .frame(width: 50, height: 50)
                .clipShape(Circle())
                VStack(alignment: .leading) {
                    Text(name)
                        .foregroundColor(.blue)
                        .font(.system(size: 20))
                    Text(capital)
                        .foregroundColor(.gray)
                        .font(.system(size: 15))
                }
            }
            Spacer()
            HStack {
                Text("\(rate)")
                Image(systemName: "star.fill")
                    .foregroundColor(.yellow)
            }
        }
        .padding()
    }
}

#Preview {
    CustomCellSwiftUI(pictureName: "canada", name: "Canada", capital: "Ottawa", rate: 5)
}
