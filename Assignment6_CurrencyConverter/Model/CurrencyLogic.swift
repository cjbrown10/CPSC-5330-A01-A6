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
        if switchValue {
            eurSwitch = true
        } else {
            eurSwitch = false
        }
    }

    mutating func setJpySwitch(_ switchValue: Bool) {
        if switchValue {
            jpySwitch = true
        } else {
            jpySwitch = false
        }
    }
    
    mutating func setGbpSwitch(_ switchValue: Bool) {
        if switchValue {
            gbpSwitch = true
        } else {
            gbpSwitch = false
        }
    }
    
    mutating func setNzdSwitch(_ switchValue: Bool) {
        if switchValue {
            nzdSwitch = true
        } else {
            nzdSwitch = false
        }
    }
    
    
 
    
    
    func getConvertedValue(_ usdAmount: Int, currencyCode: String, isSwitchOn: Bool) -> String {
        guard isSwitchOn, let conversionRate = rates[currencyCode] else {
            return ""
        }
        
        let result = Double(usdAmount) * conversionRate
        return String(format: "%.2f", result)
    }
    
    
}
