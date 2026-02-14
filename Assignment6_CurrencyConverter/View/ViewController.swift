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
    

    
    var currencyLogic = CurrencyLogic()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func EUR(_ sender: UISwitch) {
        currencyLogic.setEurSwitch(sender.isOn)
    }
    
    @IBAction func JPY(_ sender: UISwitch) {
        currencyLogic.setJpySwitch(sender.isOn)
    }
    
    @IBAction func GBP(_ sender: UISwitch) {
        currencyLogic.setGbpSwitch(sender.isOn)
    }
    
    @IBAction func NZD(_ sender: UISwitch) {
        currencyLogic.setNzdSwitch(sender.isOn)
    }
    
    
    @IBAction func convert(_ sender: UIButton) {
        guard let inputValue = USD.text,  let usdAmt = Int(inputValue) else{
            errorLabel.text = "Error: Integer Input Only"
            errorLabel.isHidden = false
            return
        }
        
        errorLabel.isHidden = true
        
        self.performSegue(withIdentifier: "toConvertedAmount", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
        if segue.identifier == "toConvertedAmount" {
            let navigation = segue.destination as! ConvertedAmountView
            let usdInt = Int(USD.text!) ?? 0
            
            navigation.usdValue = "\(usdInt)"
            navigation.eurValue = currencyLogic.getConvertedValue(usdInt, currencyCode: "EUR", isSwitchOn: currencyLogic.eurSwitch)
            navigation.jpyValue = currencyLogic.getConvertedValue(usdInt, currencyCode: "JPY", isSwitchOn: currencyLogic.jpySwitch)
            navigation.gbpValue = currencyLogic.getConvertedValue(usdInt, currencyCode: "GBP", isSwitchOn: currencyLogic.gbpSwitch)
            navigation.nzdValue = currencyLogic.getConvertedValue(usdInt, currencyCode: "NZD", isSwitchOn: currencyLogic.nzdSwitch)
            
        }
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        super.touchesBegan(touches, with: event)
    }
    
}

