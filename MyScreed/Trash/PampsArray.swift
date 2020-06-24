//
//  PampsArray.swift
//  MyScreed
//
//  Created by пользователь on 6/16/20.
//  Copyright © 2020 Александр Майко. All rights reserved.
//

import UIKit

class PampsArray {
  static var pumpsArray = [
        MarksModel(markLogo: UIImage(named: "BrinkmannLogo"),
                     markImage: UIImage(named: "Brinkmann"),
                     markName: "Brinkmann" , models: [
            PumpsModel(modelName: "Estrich boy 450", agregates: [
                AgregateModel(name: "Компрессор", images: [
                    UIImage(named: "1")!,
                    UIImage(named: "2")!,
                    UIImage(named: "3")!,
                    UIImage(named: "4")!,
                    UIImage(named: "5")!,
                    UIImage(named: "6")!,
                    UIImage(named: "7")!,
                    UIImage(named: "8")!,
                    UIImage(named: "9")!,
                    UIImage(named: "10")!,
                    UIImage(named: "11")!,
                    UIImage(named: "12")!,
                    UIImage(named: "13")!,
                    UIImage(named: "14")!,
                    UIImage(named: "15")!,
                    UIImage(named: "16")!,
                    UIImage(named: "17")!,
                    UIImage(named: "18")!,
                    UIImage(named: "19")!,
                    UIImage(named: "20")!,
                    UIImage(named: "21")!,
                    UIImage(named: "22")!,
                    UIImage(named: "23")!,
                    UIImage(named: "24")!,
                    UIImage(named: "25")!,
                    UIImage(named: "26")!,
                    UIImage(named: "27")!,
                    UIImage(named: "28")!,
                    UIImage(named: "29")!,
                    UIImage(named: "30")!,
                    UIImage(named: "31")!,
                    UIImage(named: "32")!,
                    UIImage(named: "33")!,
                ])])]),
        MarksModel(markLogo: UIImage(named: "PutzmeisterLogo"), markImage: UIImage(named: "Putzmeister"), markName: "Putzmeister" ,models: [
            PumpsModel(modelName: "M740 DBS 2D", agregates: [
                
                AgregateModel(name: "Двигатель", images: [
                    UIImage(named: "1.2")!,
                    UIImage(named: "2")!,
                    UIImage(named: "1")!,
                    UIImage(named: "3")!,
                    UIImage(named: "45")!,
                    UIImage(named: "46")!
                ]),
                AgregateModel(name: "Компрессор, ресивер", images: [
                    UIImage(named: "11")!,
                    UIImage(named: "23")!,
                    UIImage(named: "24")!,
                    UIImage(named: "25")!,
                    UIImage(named: "26")!,
                    UIImage(named: "27")!,
                    UIImage(named: "12")!,
                    UIImage(named: "24.1")!,
                ]),
                AgregateModel(name: "Привод компрессора", images: [
                    UIImage(named: "13")!,
                ]),
                AgregateModel(name: "Смесительный бункер", images: [
                    UIImage(named: "40")!,
                    UIImage(named: "41")!,
                    UIImage(named: "42")!,
                    UIImage(named: "43")!,
                    UIImage(named: "44")!,
                ]),
                AgregateModel(name: "Привод смесительного вала", images: [
                    UIImage(named: "14")!,
                    UIImage(named: "15")!
                ]),
                AgregateModel(name: "Компрессор, ресивер", images: [
                    UIImage(named: "7")!,
                    UIImage(named: "8")!,
                    UIImage(named: "9")!,
                    UIImage(named: "10")!,
                    UIImage(named: "10.1")!,
                ]),
                AgregateModel(name: "Редуктор", images: [
                    UIImage(named: "22")!
                ]),
                AgregateModel(name: "Центральная смазка", images: [
                    UIImage(named: "28")!,
                    UIImage(named: "29")!
                ]),
                AgregateModel(name: "Скип, скрепер", images: [
                    UIImage(named: "35")!,
                    UIImage(named: "38")!,
                    UIImage(named: "82")!,
                ]),
                AgregateModel(name: "Гидравлическая система", images: [
                    UIImage(named: "30")!,
                    UIImage(named: "31")!,
                    UIImage(named: "32")!,
                    UIImage(named: "33")!,
                    UIImage(named: "34")!,
                ]),
                AgregateModel(name: "Электрика", images: [
                    UIImage(named: "48")!,
                    UIImage(named: "49")!,
                ]),
                AgregateModel(name: "Рама, шасси, капот", images: [
                    UIImage(named: "16")!,
                    UIImage(named: "17")!,
                    UIImage(named: "18")!,
                    UIImage(named: "19")!,
                    UIImage(named: "20")!,
                    UIImage(named: "21")!
                ]),
                AgregateModel(name: "Дополнительно", images: [
                    UIImage(named: "4")!,
                    UIImage(named: "5")!,
                    UIImage(named: "6")!,
                    UIImage(named: "62")!
                ]),
            ])])
    ]
    
    private init () {}
}
