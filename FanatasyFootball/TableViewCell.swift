//
//  TableViewCell.swift
//  FanatasyFootball
//
//  Created by Devansh Sharma on 04/05/17.
//  Copyright © 2017 Devansh Sharma. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    
    @IBOutlet weak var myimage: UIImageView!
    
    @IBOutlet weak var name: UILabel!
    
    @IBOutlet weak var club: UILabel!
    
    @IBOutlet weak var myswitch: UISwitch!
    
    @IBOutlet weak var clubname: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    @IBAction func changecell(_ sender: Any) {
        
        
        
         }
    
}
