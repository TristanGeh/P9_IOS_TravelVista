//
//  ListViewModel.swift
//  TravelVista
//
//  Created by Tristan Géhanne on 22/07/2024.
//

import Foundation
import SwiftUI

class ListViewModel: ObservableObject {
    @Published var regions: [Region] = []
    
    init() {
        loadRegions()
    }
    
    private func loadRegions() {
        let loadedRegions: [Region] = Service().load("Source.json")
        self.regions = loadedRegions
    }
}
