//
//  ListView.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 22/07/2024.
//

import SwiftUI

struct ListView: View {
    
    @ObservedObject private var viewModel = ListViewModel()
    
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach(viewModel.regions) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries) { country in
                            CustomCellSwiftUI(pictureName: country.pictureName, name: country.name, capital: country.capital, rate: country.rate)
                        }
                    }
                }
            }
            .listStyle(.plain)
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .principal) {
                    Text("Liste de voyages")
                        .font(.system(size: 16))
                        .bold()
                }
            }
        }
    }
}


#Preview {
    ListView()
    
}
