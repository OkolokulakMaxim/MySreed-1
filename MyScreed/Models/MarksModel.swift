//
//  PumpsModel.swift
//  MyScreed
//
//  Created by Александр Майко on 23/04/2020.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class MarksModel{
    
    var markLogo: UIImage?
    var markImage: UIImage?
    var markName: String?
    var models: [PumpsModel?]
    
    init(markLogo: UIImage?, markImage: UIImage?, markName: String, models: [PumpsModel]) {
        self.markLogo = markLogo
        self.markImage = markImage
        self.markName = markName
        self.models = models
    }
}


