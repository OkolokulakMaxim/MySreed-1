//
//  Agregate.swift
//  MyScreed
//
//  Created by пользователь on 6/16/20.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class AgregateModel {
    
    var name: String?
    var images: [UIImage]
    
    init(name: String?, images: [UIImage]) {
        self.name = name
        self.images = images
    }
}
