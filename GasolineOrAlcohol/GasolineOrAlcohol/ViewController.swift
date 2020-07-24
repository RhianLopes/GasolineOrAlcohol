//
//  ViewController.swift
//  GasolineOrAlcohol
//
//  Created by Rhian Lopes da Costa on 22/07/20.
//  Copyright © 2020 Rhian Lopes da Costa. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var alcoholPriceField: UITextField!
    
    @IBOutlet weak var gasolinePriceField: UITextField!
    
    @IBOutlet weak var calculateButton: UIButton!
    
    @IBOutlet weak var bestGas: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        calculateButton.layer.cornerRadius = 10
        bestGas.layer.masksToBounds = true
        bestGas.layer.cornerRadius = 10
    }

    @IBAction func calculate(_ sender: Any) {
        
        if let gasolinePrice = gasolinePriceField.text {
            if let alcoholPrice = alcoholPriceField.text {
                let isValid = self.validateFields(gasolinePrice: gasolinePrice, alcoholPrice: alcoholPrice);
                
                if (isValid) {
                    self.calculateBestGas(gasolinePrice: gasolinePrice, alcoholPrice: alcoholPrice)
                } else {
                    bestGas.text = "INSIRA OS PREÇOS"
                }
            }
        }
    }
    
    func calculateBestGas(gasolinePrice: String, alcoholPrice: String) {
        if let gasolineValue = Double(gasolinePrice) {
            if let alcoholValue = Double(alcoholPrice) {
                let value = alcoholValue / gasolineValue
                if (value >= 0.7) {
                    bestGas.text = "GASOLINA"
                } else {
                    bestGas.text = "ÁLCOOL"
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
}

