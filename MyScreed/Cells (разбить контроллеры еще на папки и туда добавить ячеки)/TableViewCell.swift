//
//  TableViewCell.swift
//  MyScreed
//
//  Created by Александр Майко on 23/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var pumpImageView: UIImageView!
    @IBOutlet weak var modelLabel: UILabel!

    func configureCell(pumpsModel: MarksModel) {
        pumpImageView.image = pumpsModel.markLogo
        modelLabel.text = pumpsModel.markName
    }
    
}
