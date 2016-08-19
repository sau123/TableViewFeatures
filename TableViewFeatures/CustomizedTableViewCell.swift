//
//  CustomizedTableViewCell.swift
//  TableViewFeatures
//
//  Created by Saumeel Gajera on 8/12/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit
import SWTableViewCell

class CustomizedTableViewCell: SWTableViewCell {

    @IBOutlet weak var customizedLabel: UILabel!
    
    var toDoItem : ToDoItem? {
        didSet {
            customizedLabel.text = toDoItem?.text
            }
        }
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
