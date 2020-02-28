//
//  PlanetarySystem.swift
//  HelloWorld
//
//  Created by 홍정표 on 2020/02/13.
//  Copyright © 2020 홍정표. All rights reserved.
//

import Foundation

class PlanetarySystem{
    
    var name: String = ""
    
    var planets = planetData.map{(name, description) in
        Planet(name: name, descritpion: description)
    }
    
    var randomPlanet : Planet? {
        
        if planets.isEmpty{
            return nil
        }else{
            let count = UInt32(planets.count)
            let index = Int(arc4random_uniform(count))
            
            return planets[index]
        }
    }
    
    
    init(name: String) {
        self.name = name
        
    }
    
}
