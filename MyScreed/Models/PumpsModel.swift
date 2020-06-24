//
//  PumpsModel.swift
//  MyScreed
//
//  Created by пользователь on 6/16/20.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import Foundation

class PumpsModel{
    
    var modelName : String?
    var agregates: [AgregateModel]
    
    init(modelName: String?, agregates: [AgregateModel]) {
        self.modelName = modelName
        self.agregates = agregates
    }
}
