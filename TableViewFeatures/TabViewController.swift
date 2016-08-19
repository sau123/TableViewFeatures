//
//  TabViewController.swift
//  TableViewFeatures
//
//  Created by Saumeel Gajera on 8/12/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit

class TabViewController: UIViewController, UITabBarDelegate {

    @IBOutlet weak var contentView: UIView!
    @IBOutlet weak var tabBar: UITabBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        tabBar.delegate = self
    }

    func tabBar(tabBar: UITabBar, didSelectItem item: UITabBarItem) {
        print(item.tag)
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

}
