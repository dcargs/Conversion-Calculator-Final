//
//  ConverterModel.swift
//  Conversion Calculator
//
//  Created by Devin Cargill on 5/6/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import Foundation

class ConverterModel {
    
    func convertUnits(data: Double, controller: Int) -> Double {
        switch controller {
            
            case 0://fahrenheit to celsius
                return Double(round(100*((data - 32) * (5 / 9)))/100)
            
            case 1://1 for celsius to fahrenheit
                return Double(round(100*( (data * (9 / 5) + 32) ))/100)
            
            case 2://2 for miles to kilometers
                return Double(round(100*( (data * 1.609344) ))/100)
            
            case 3://3 for kilometers to miles
                return Double(round(100*( (data / 1.609344) ))/100)
 
            default:
                print("Something went terribly wrong, ignore the value")
                return -69.69
        }
    }
    
}
