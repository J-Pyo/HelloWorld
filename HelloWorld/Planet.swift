//
//  Planet.swift
//  HelloWorld
//
//  Created by 홍정표 on 2020/02/14.
//  Copyright © 2020 홍정표. All rights reserved.
//
//MVC 패턴중에 Model(data)
import Foundation

class Planet{
    let name: String
    let description: String
    
    init(name: String,descritpion: String) {
        self.name = name
        self.description = descritpion
    }
}
var planetData = [
    "mecury" : "hot planet",
    "venus" : "cloudy planet",
    "earth" : "here",
    "mars" : "red planet",
    "zupiter" : "gas planet",
    "neptune" : "cold planet..."
]

