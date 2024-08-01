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
                            NavigationLink {
                                DetailView(country: country)
                            } label: {
                                CustomCellSwiftUI(country: country)
                            }
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

struct DetailView: UIViewControllerRepresentable{
    var country: Country
    
    func makeUIViewController(context: Context) -> some UIViewController {
        guard let DetailVC = UIStoryboard(name: "Main", bundle: .main).instantiateViewController(withIdentifier: "DetailViewController") as? DetailViewController else { fatalError() }
        
        DetailVC.country = country
        
        return DetailVC
    }
    
    func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        //
    }
}


#Preview {
    ListView()
    
}
