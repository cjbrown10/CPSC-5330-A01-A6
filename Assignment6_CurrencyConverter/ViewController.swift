//
//  ViewController.swift
//  Assignment6_CurrencyConverter
//
//  Created by Colby Brown on 2/11/26.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var USD: UITextField!
    
    @IBOutlet weak var errorLabel: UILabel!
    
    var eurSwitch = false
    var jpySwitch = false
    var gbpSwitch = false
    var audSwitch = false
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func EUR(_ sender: UISwitch) {
        if sender.isOn{
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }
    
    @IBAction func JPY(_ sender: UISwitch) {
        if sender.isOn{
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    @IBAction func GBP(_ sender: UISwitch) {
        if sender.isOn{
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    @IBAction func AUD(_ sender: UISwitch) {
        if sender.isOn{
            audSwitch = true
        } else {
            audSwitch = false
        }
    }
    
    @IBAction func convert(_ sender: UIButton) {
        guard let inputValue = USD.text, let usdAmt = Int(inputValue) else{
            errorLabel.text = "Error: Invalid Input. Please enter a whole number"
            return}
        
        let eurConvRate = 0.84
        let jpyConvRate = 153.09
        let gbpConvRate = 0.73
        let audConvRate = 1.4
        
        var eurAmt =  Double(usdAmt) * eurConvRate
        var jpyAmt =  Double(usdAmt) * jpyConvRate
        var gbpAmt =  Double(usdAmt) * gbpConvRate
        var audAmt =  Double(usdAmt) * audConvRate
        
    }
    
    
    
}

