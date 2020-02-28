//
//  ViewController.swift
//  HelloWorld
//
//  Created by 홍정표 on 2020/02/13.
//  Copyright © 2020 홍정표. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextView: UITextView!
    @IBOutlet weak var myLabel: UILabel!
    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextView: UITextField!
    @IBOutlet weak var secondTextField: UITextView!
    
    let planetarySystem1 = PlanetarySystem(name: "Solar System")
    

    //반복 줄일것
    
    override func viewDidLoad() {//순서가 중요한 것은 viewDidLoad에 넣는다
        super.viewDidLoad()
        // Do any additional setup after loading the view.

        start()
        introduction()
        print(response(q: "Who are you?"))
        
    }
    
    func start(){
        secondTextField.text =
        "Shall I radomly choose a planet for you to visit (y or n)?"
    }
    
    func introduction(){
        let diameterOfEarth: Float = 23859.92
        
        firstTextView.text = "welcome to our  \(planetarySystem1.name)! There are \(planetarySystem1.planets.count) planets to explore You are currently on Earth, which has a circumference of \(diameterOfEarth) miles"
    }
    //q라는 파라미터의 타입이 String 옆 화살표는 반환값 타입
    func response(q : String) -> String {
        myLabel.text = q
        
        return "Good"
    }

    @IBAction func firstButton(_ sender: UIButton) {
        let name = firstTextField.text!
        myLabel.text = "Nice to meet you, \(name)"
    }
    
    @IBAction func secondButton(_ sender: UIButton) {
        let decision = secondTextView.text
        if(decision == "y"){
            
            if let rp = planetarySystem1.randomPlanet{
                secondTextField.text = "OK! travel to \(rp.name)"
            }else{
                secondTextField.text = "Sorry, There are no planets"
            }
            
        }else if(decision == "n"){
            performSegue(withIdentifier: "show", sender: self)
            secondTextField.text = "OK bye.."
        }else{
            secondTextField.text = "Error!!"
        }
        
    }
}

