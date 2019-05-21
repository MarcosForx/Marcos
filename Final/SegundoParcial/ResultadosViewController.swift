//
//  ResultadosViewController.swift
//  SegundoParcial
//  Copyright © 2019 Guest User. All rights reserved.
//

import UIKit

class ResultadosViewController: UIViewController {
    @IBOutlet weak var resultLabel: UILabel!
    var result: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultLabel.text = result
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
