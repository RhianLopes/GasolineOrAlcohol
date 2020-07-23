//
//  ViewController.swift
//  GasolineOrAlcohol
//
//  Created by Rhian Lopes da Costa on 22/07/20.
//  Copyright © 2020 Rhian Lopes da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gasolinePrice: UITextField!
    
    @IBOutlet weak var alcoholPrice: UITextField!
    
    @IBOutlet weak var bestGas: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        bestGas.text = calculateBestGas()
    }
    
    func validateFields() -> Bool {
        return !gasolinePrice.text!.isEmpty || !alcoholPrice.text!.isEmpty
    }
    
    func calculateBestGas() -> String {
        
        return ""
    }
}

