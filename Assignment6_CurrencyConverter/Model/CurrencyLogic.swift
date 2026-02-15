//
//  CurrencyLogic.swift
//  Assignment6_CurrencyConverter
//
//  Created by Colby Brown on 2/12/26.
//

import Foundation

struct CurrencyLogic {
    
    var eurSwitch = false
    var jpySwitch = false
    var gbpSwitch = false
    var nzdSwitch = false
    
    let rates: [String: Double] = [
        "EUR": 0.84,
        "JPY": 153.09,
        "GBP": 0.73,
        "NZD": 1.66
    ]
 
    mutating func setEurSwitch(_ switchValue: Bool) {
        eurSwitch = switchValue
    }

    mutating func setJpySwitch(_ switchValue: Bool) {
        jpySwitch = switchValue
    }
    
    mutating func setGbpSwitch(_ switchValue: Bool) {
        gbpSwitch = switchValue
    }
    
    mutating func setNzdSwitch(_ switchValue: Bool) {
        nzdSwitch = switchValue
    }
    
    func getConvertedValue(_ usdAmount: Int, currencyCode: String, isSwitchOn: Bool) -> String {
        guard isSwitchOn, let conversionRate = rates[currencyCode] else {
            return ""
        }
        let result = Double(usdAmount) * conversionRate
        
        let formatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.minimumFractionDigits = 2
        formatter.maximumFractionDigits = 2
        
        return formatter.string(from: NSNumber(value: result)) ?? ""
    }
    
    func getAllConvertedValues(for usdAmount : Int) -> [String: String] {
        return [
            "USD": "\(usdAmount)",
            "EUR": getConvertedValue(usdAmount, currencyCode: "EUR", isSwitchOn: eurSwitch),
            "JPY": getConvertedValue(usdAmount, currencyCode: "JPY", isSwitchOn: jpySwitch),
            "GBP": getConvertedValue(usdAmount, currencyCode: "GBP", isSwitchOn: gbpSwitch),
            "NZD": getConvertedValue(usdAmount, currencyCode: "NZD", isSwitchOn: nzdSwitch)
        ]
    }
  
    
}
