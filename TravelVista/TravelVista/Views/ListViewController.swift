//
//  ListViewController.swift
//  TravelVista
//
//  Created by Amandine Cousin on 13/12/2023.
//

import UIKit

class ListViewController: UIViewController {
    // Fonction appelée lorsqu'une cellule est cliquée
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let senderCell = sender as? CustomCell,
           let country = senderCell.country,
           let controller: DetailViewController = segue.destination as? DetailViewController {
            controller.country = country
            
        }
    }
}

