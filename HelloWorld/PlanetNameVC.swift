//
//  PlanetNameVC.swift
//  HelloWorld
//
//  Created by 홍정표 on 2020/02/14.
//  Copyright © 2020 홍정표. All rights reserved.
//

import UIKit

class PlanetNameVC: UIViewController {

    @IBOutlet weak var planetNameTF: UITextField!
    @IBOutlet weak var planetNameTV: UITextView!
   
    let planetarySystem1 = PlanetarySystem(name: "Solar System")

    //반복 줄일것
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Do any additional setup after loading the view.
    }
    @IBAction func planetNameButton(_ sender: UIButton) {

        
        for i in planetarySystem1.planets{
            
            if(planetNameTF.text! == i.name){
                planetNameTV.text = "arrive at \(i.name),\(i.description)"
            }
        }
    }
}
