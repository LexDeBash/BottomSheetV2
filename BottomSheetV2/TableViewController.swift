//
//  TableViewController.swift
//  BottomSheetV2
//
//  Created by Marius Malyshev on 16.12.2021.
//

import UIKit

class TableViewController: UITableViewController {

    private let imageNames = [
        "folder",
        "paperplane",
        "tray",
        "doc",
        "note",
        "calendar",
        "book",
        "ticket",
        "link",
        "person",
        "command",
        "option",
        "alt",
        "globe",
        "moon"
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        title = "Bottom Sheet"
        tableView.register(UITableViewCell.self, forCellReuseIdentifier: "reuseIdentifier")
        configureSearchController()
    }
    
    // MARK: - Table view data source
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        imageNames.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "reuseIdentifier", for: indexPath)
        
        var content = cell.defaultContentConfiguration()
        content.text = imageNames[indexPath.row]
        content.image = UIImage(systemName: imageNames[indexPath.row])
        
        cell.contentConfiguration = content
        return cell
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: true)
    }
}

extension TableViewController {
    
    private func configureSearchController() {
        let searchController = UISearchController()
        searchController.searchBar.sizeToFit()
        tableView.tableHeaderView = searchController.searchBar
    }
}
