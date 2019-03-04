//
//  ViewController.swift
//  Forx
//
//  Created by Macbook on 3/4/19.
//  Copyright © 2019 dixLab. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var imagen: UIImageView! 
    
    @IBOutlet weak var butto: UIButton!
    
    @IBAction func cambiar(_ sender: UIButton) {
        view.backgroundColor = .red
        imagen.image = UIImage(named: "h2r")
        butto.setTitle("Cambio", for: .normal)
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
      imagen.image = UIImage(named: "r1")
        
        
    }


}

