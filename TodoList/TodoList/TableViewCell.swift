//
//  TableViewCell.swift
//  TodoList
//
//  Created by Alexy Pocholle on 07/11/2022.
//

import UIKit

class TableViewCell: UITableViewCell {
    
    @IBOutlet weak var MySwitch: UISwitch!
    @IBOutlet weak var MyLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
