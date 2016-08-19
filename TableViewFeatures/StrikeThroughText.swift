//
//  StrikeThroughText.swift
//  TableViewFeatures
//
//  Created by Saumeel Gajera on 8/11/16.
//  Copyright © 2016 walmart. All rights reserved.
//

import UIKit
import QuartzCore

class StrikeThroughText: UILabel {
    let strikeThroughLayer: CALayer
    let kStrikeOutThickness: CGFloat = 2.0


    // The resizeStrikeThrough method is called when strikeThrough gets set to true.
    var strikeThrough : Bool {
        didSet {
            strikeThroughLayer.hidden = !strikeThrough
            if strikeThrough {
                resizeStrikeThrough()
            }
        }
    }
    
    required init(coder aDecoder: NSCoder) {
        fatalError("NSCoding not supported")
    }
    
    override init(frame: CGRect) {
        strikeThroughLayer = CALayer()
        strikeThroughLayer.backgroundColor = UIColor.whiteColor().CGColor
        strikeThroughLayer.hidden = true
        strikeThrough = false
        
        super.init(frame: frame)
        layer.addSublayer(strikeThroughLayer)
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        resizeStrikeThrough()
    }
    
    func resizeStrikeThrough() {
        if let text = text {

        let textSize = text.sizeWithAttributes([NSFontAttributeName:font])
        strikeThroughLayer.frame = CGRect(x: 0, y: bounds.size.height/2,
                                          width: textSize.width, height: kStrikeOutThickness)
        }
    }
    
    /*
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
    }
    */
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    

}
