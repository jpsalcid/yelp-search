//
//  SortByCell.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SortByCellDelegate {
    optional func sortByCell(sortByCell: SortByCell, didChangeValue value: Bool)
}

class SortByCell: UITableViewCell {

    @IBOutlet weak var sortBySwitch: UISwitch!
    weak var delegate: SortByCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        sortBySwitch.addTarget(self, action: "dealValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func dealValueChanged() {
        delegate?.sortByCell?(self, didChangeValue: sortBySwitch.on)
    }

}
