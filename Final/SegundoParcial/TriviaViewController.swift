//
//  TriviaControllerViewController.swift
//  SegundoParcial
//
//  Created by Guest User on 29/04/19.
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class TriviaViewController: UIViewController {
    @IBOutlet weak var QuestionStackView: UIStackView!
    
    @IBOutlet weak var Question1: UILabel!
    @IBOutlet weak var Question2: UILabel!
    @IBOutlet weak var Question3: UILabel!

    
    @IBOutlet weak var Switch1: UISwitch!
    @IBOutlet weak var Switch2: UISwitch!
    @IBOutlet weak var Switch3: UISwitch!

    
    var correctAnswers = 0
    
    @IBAction func TriviaButtonPressed(_ sender: UIButton) {
        
        correctAnswers = 0
        
        if Switch1.isOn {
            correctAnswers += 1
        }
        
        if Switch2.isOn == false {
            correctAnswers += 1
        }
        
        if Switch3.isOn == false{
            correctAnswers += 1
        }
        

        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender:
        Any?) {
        if let destino = segue.destination as? ResultadosViewController, segue.identifier == "ResultSegue" {
            if correctAnswers == 3 {
                destino.result = "Tu código es: 12345"
            } else {
                destino.result = "Sigue participando"
               
            }
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        Question1.text = "La banda se creo en 1989: "
        Question2.text = "Tienen 7 albumes: "
        Question3.text = "Su genero es reggaeton: "
        
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
