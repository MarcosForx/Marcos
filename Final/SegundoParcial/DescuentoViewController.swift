//
//  DescuentoViewController.swift
//  SegundoParcial
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class DescuentoViewController: UIViewController {
    
    
    @IBOutlet weak var totalLabel: UILabel!
    @IBOutlet weak var descuentoLabel: UILabel!
    
    var total: Double?

    override func viewDidLoad() {
        super.viewDidLoad()
        if let total = total {
          totalLabel.text = "\(total)"
        }
     
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    


}
