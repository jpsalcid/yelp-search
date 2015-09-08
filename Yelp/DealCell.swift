//
//  DealCell.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol DealCellDelegate {
    optional func dealCell(dealCell: DealCell, didChangeValue value: Bool)
}

class DealCell: UITableViewCell {

    @IBOutlet weak var dealLabel: UILabel!
    @IBOutlet weak var dealSwitch: UISwitch!
    
    weak var delegate: DealCellDelegate?
    
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        dealSwitch.addTarget(self, action: "dealValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func dealValueChanged() {
        println("deal value changed")
        delegate?.dealCell?(self, didChangeValue: dealSwitch.on)
    }

}
