//
//  SelectedSortByCell.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SelectedSortByCellDelegate {
    optional func selectedSortByCell(selectedSortByCell: SelectedSortByCell, didChangeValue value: String)
}

class SelectedSortByCell: UITableViewCell {

    @IBOutlet weak var sortByLabel: UILabel!
    @IBOutlet weak var sortBySwitch: UISwitch!
    
    weak var delegate: SelectedSortByCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        sortBySwitch.addTarget(self, action: "sortByValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func sortByValueChanged() {
        delegate?.selectedSortByCell?(self, didChangeValue: sortByLabel.text!)
    }

}
