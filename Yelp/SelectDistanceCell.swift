//
//  SelectDistanceCell.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

@objc protocol SelectDistanceCellDelegate {
    optional func selectDistanceCell(selectDistanceCell: SelectDistanceCell, didChangeValue: String)
}

class SelectDistanceCell: UITableViewCell {

    @IBOutlet weak var distanceLabel: UILabel!
    
    weak var delegate: SelectDistanceCellDelegate?
    
    @IBOutlet weak var distanceSelectedSwitch: UISwitch!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
        
        distanceSelectedSwitch.addTarget(self, action: "distanceValueChanged", forControlEvents: UIControlEvents.ValueChanged)
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func distanceValueChanged() {
        delegate?.selectDistanceCell?(self, didChangeValue: distanceLabel.text!)
    }
    

}
