//
//  SwipeTableViewController.swift
//  SwipeTableViewController
//
//  Created by Kevin Babou on 10/9/21.
//  Copyright © 2021 App Brewery. All rights reserved.
//

import UIKit
import SwipeCellKit
class SwipeTableViewController: UITableViewController, SwipeTableViewCellDelegate {

    var cell: UITableViewCell?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    //MARK: - TableView Datasource meTHODS
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Cell", for: indexPath) as! SwipeTableViewCell
        cell.delegate = self
        return cell
    }
    
    func tableView(_ tableView: UITableView, editActionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> [SwipeAction]? {
        guard orientation == .right else { return nil }

        let deleteAction = SwipeAction(style: .destructive, title: "Delete") { action, indexPath in
            print("Delete cell.")
            // handle action by updating model with deletion
//            if let category = self.categories?[indexPath.row] {
//                do {
//                    try self.realm.write {
//                        self.realm.delete(category)
//                    }
//                } catch {
//                    print("Error deleting category: \(error)")
//                }
//            }
        }
        
        // customize the action appearance
        deleteAction.image = UIImage(named: "delete-icon")

        return [deleteAction]
    }
    
    func tableView(_ tableView: UITableView, editActionsOptionsForRowAt indexPath: IndexPath, for orientation: SwipeActionsOrientation) -> SwipeOptions {
        var options = SwipeOptions()
        options.expansionStyle = .destructive
        options.transitionStyle = .border
        return options
    }

}
