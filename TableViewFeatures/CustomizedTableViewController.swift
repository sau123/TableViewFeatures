//
//  CustomizedTableViewController.swift
//  TableViewFeatures
//
//  Created by Saumeel Gajera on 8/12/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit
import SWTableViewCell

class TableView {
    
}

class CustomizedTableViewController: UIViewController, UITableViewDelegate,UITableViewDataSource, SWTableViewCellDelegate {

    @IBOutlet weak var tableView: UITableView!
    var toDoItems = [ToDoItem]()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.delegate = self
        tableView.dataSource = self
        
//        tableView.registerClass(CustomizedTableViewCell.self, forCellReuseIdentifier: "CustomizedCell")
        
        if toDoItems.count > 0 {
            return
        }
        // customized one
        toDoItems.append(ToDoItem(text: "feed the cat!"))
        toDoItems.append(ToDoItem(text: "buy eggs!"))
        toDoItems.append(ToDoItem(text: "watch WWDC videos!"))
        toDoItems.append(ToDoItem(text: "rule the Web"))
        toDoItems.append(ToDoItem(text: "buy a new iPhone"))
        toDoItems.append(ToDoItem(text: "darn holes in socks!"))
        toDoItems.append(ToDoItem(text: "write this tutorial"))
        toDoItems.append(ToDoItem(text: "master Swift"))
        toDoItems.append(ToDoItem(text: "learn to draw"))
        toDoItems.append(ToDoItem(text: "get more exercise"))
        toDoItems.append(ToDoItem(text: "catch up with Mom"))
        toDoItems.append(ToDoItem(text: "get a hair cut"))
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    func swipeableTableViewCell(cell: SWTableViewCell!, didTriggerRightUtilityButtonWithIndex index: Int) {
        switch index {
        case 0:
            print("delete button pressed")
            let indexPath = self.tableView.indexPathForCell(cell)
            toDoItems.removeAtIndex((indexPath?.row)!)
            self.tableView.deleteRowsAtIndexPaths([indexPath!], withRowAnimation: .Left)
        case 1:
            print("pressed 1")
        default:
            print("default right")
        }
        cell.hideUtilityButtonsAnimated(true)
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("CustomizedCell", forIndexPath: indexPath) as! CustomizedTableViewCell
        let item = toDoItems[indexPath.row]
        
        let rightUtilityButtons : NSMutableArray = []
        rightUtilityButtons.sw_addUtilityButtonWithColor(GroupItColors.orangered, icon: GroupItImages.delete)
        rightUtilityButtons.sw_addUtilityButtonWithColor(GroupItColors.skyblue, icon: GroupItImages.favorite)
        cell.rightUtilityButtons = rightUtilityButtons as [AnyObject]
        
        cell.toDoItem = item
        cell.delegate = self
        
        return cell
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
