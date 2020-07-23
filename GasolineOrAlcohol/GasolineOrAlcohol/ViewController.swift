//
//  ViewController.swift
//  GasolineOrAlcohol
//
//  Created by Rhian Lopes da Costa on 22/07/20.
//  Copyright © 2020 Rhian Lopes da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var gasolinePriceField: UITextField!
    
    @IBOutlet weak var alcoholPriceField: UITextField!
    
    @IBOutlet weak var bestGas: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func calculate(_ sender: Any) {
        
        let isValid = self.validateFields(gasolinePrice: gasolinePriceField, alcoholPrice: alcoholPriceField);
        
        if (isValid) {
            
        
        } else {
            
        }
    }
    
    func calculateBestGas(gasolinePrice: String, alcoholPrice: String) -> Bool {
        if let gasolineValue = Double(gasolinePrice) {
            if let alcoholValue = Double(alcoholPrice) {
                let value = alcoholValue / gasolineValue
                if (value >= 0.7) {
                    
                }
            }
        }
    }
    
    func validateFields(gasolinePrice: String, alcoholPrice: String) -> Bool {
        var isValid = true
        
        if (gasolinePrice.isEmpty) {
            isValid = false
        } else if (alcoholPrice.isEmpty) {
            isValid = false
        }
        return isValid
    }
    
    func calculateBestGas() -> String {
        
        return ""
    }
}

