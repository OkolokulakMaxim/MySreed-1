//
//  TableViewCell3.swift
//  MyScreed
//
//  Created by Александр Майко on 24/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class TableViewCell3: UITableViewCell {
    
    @IBOutlet weak var agregateNameLabel: UILabel?

    func configureCell3(agregate: AgregateModel) {
        agregateNameLabel?.text = agregate.name
    }
}
