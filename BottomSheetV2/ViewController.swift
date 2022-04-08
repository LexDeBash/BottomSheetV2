//
//  ViewController.swift
//  BottomSheetV2
//
//  Created by Marius Malyshev on 16.12.2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func showTablePressed() {
        let tableVC = TableViewController()
        let navigationVC = UINavigationController(rootViewController: tableVC)
        
        guard let sheetView = navigationVC.sheetPresentationController else { return }
        sheetView.detents = [.medium(), .large()]
        sheetView.prefersScrollingExpandsWhenScrolledToEdge = false
        sheetView.prefersGrabberVisible = true
        sheetView.prefersEdgeAttachedInCompactHeight = true
        sheetView.preferredCornerRadius = 20
        sheetView.largestUndimmedDetentIdentifier = .medium
        
        present(navigationVC, animated: true)
    }
}

