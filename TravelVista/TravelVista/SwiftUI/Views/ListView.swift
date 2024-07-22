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
            List{
                ForEach(viewModel.regions) { region in
                    Section(header: Text(region.name)) {
                        ForEach(region.countries) { country in
                            CustomCellSwiftUI(pictureName: country.pictureName, name: country.name, capital: country.capital, rate: country.rate)
                            }
                        }
                    }
                }
            }
        }


#Preview {
    ListView()
    
}
