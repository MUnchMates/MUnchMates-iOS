//
//  SearchListTableViewCell.swift
//  MUnchMates
//
//  Created by Michael Ulrich on 12/14/17.
//  Copyright © 2017 Michael Ulrich. All rights reserved.
//

import UIKit
import Firebase

// class for cell in tableView for SearchListViewController
class SearchListTableViewCell: UITableViewCell {

    // outlets
    @IBOutlet weak var lblNameSearchList: UILabel!
    @IBOutlet weak var lblMealPlan: UILabel!
    @IBOutlet weak var lblMateTypeCollege: UILabel!
    @IBOutlet weak var lblMUteMode: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        // Configure the view for the selected state
    }

}
