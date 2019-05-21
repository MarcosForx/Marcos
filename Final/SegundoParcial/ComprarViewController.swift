//
//  ReservarViewController.swift
//  SegundoParcial
//
//  Copyright © 29/04/2019 Guest User. All rights reserved.
//

import UIKit

class ComprarViewController: UIViewController {
    
    @IBOutlet weak var camisasTextLabel1: UILabel!
    @IBOutlet weak var tazasLabel2: UILabel!
    @IBOutlet weak var cuponText: UITextField!
    @IBOutlet weak var stepper1: UIStepper!
    @IBOutlet weak var stepper2: UIStepper!
    
    
    let cuponReal = "12345"
    var total: Double?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    @IBAction func stepper1Change(_ sender: UIStepper) {
        camisasTextLabel1.text = "\(Int(sender.value))"
    }
    
    @IBAction func stepper2Change(_ sender: UIStepper) {
        tazasLabel2.text = "\(Int(sender.value))"
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let total = total else {return}
        if let destino = segue.destination as? DescuentoViewController {
            destino.total = total
        }
        
        
    }
    
    
    @IBAction func continuarButton(_ sender: UIButton) {
        let cantidadCamisas1 = stepper1.value
        let cantidadTazas2 = stepper2.value
        let cuponReal = "12345"
        var cobro = 0.0
        
        if cantidadCamisas1 > 0.0 {
            cobro = 150.0 * cantidadCamisas1
        }
        
        if cantidadTazas2 > 0.0 {
            cobro = 180.0 * cantidadTazas2
        }
        
        if cuponText.text == cuponReal {
            cobro = 0.5 * cobro
        }
        
       
        
        total = cobro
        performSegue(withIdentifier: "total", sender: self)
        
    }
    
    
}
