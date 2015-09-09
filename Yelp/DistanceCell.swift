//
//  DistanceCell.swift
//  Yelp
//
//  Created by Jasen Salcido on 9/8/15.
//  Copyright (c) 2015 Timothy Lee. All rights reserved.
//

import UIKit

protocol DistanceCellDelegate: class {
    func distanceCellDidToggle(distanceCell: DistanceCell, didChangeValue value:Bool)
}

class DistanceCell: UITableViewCell {

    @IBOutlet weak var distanceOnOffSwitch: UISwitch!
    weak var delegate: DistanceCellDelegate?
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    @IBAction func toggleSelect(sender: AnyObject) {
        delegate?.distanceCellDidToggle(self, didChangeValue: distanceOnOffSwitch.on)
    }

    

}
