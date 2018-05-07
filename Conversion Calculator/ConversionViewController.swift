//
//  ConversionViewController.swift
//  Conversion Calculator
//
//  Created by Devin Cargill on 4/13/18.
//  Copyright © 2018 Devin Cargill. All rights reserved.
//

import UIKit

class ConversionViewController: UIViewController {
    
    var converterArray: [Converter] = [Converter]()
    var converterInt: Int = 0 /* 0 for fahrenheit to celsius; 1 for celsius to fahrenheit
                                 2 for miles to kilometers; 3 for kilometers to miles */
    var converterModel: ConverterModel = ConverterModel()
    var numberString: String = ""
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func converterButtonClick(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: converterArray[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.converterInt = 0
            
            if(self.numberString == ""){
                self.outputDisplay.text = self.converterArray[self.converterInt].outputUnit
                self.inputDisplay.text = self.converterArray[self.converterInt].inputUnit
            } else {
                self.inputDisplay.text = self.numberString + self.converterArray[self.converterInt].inputUnit
                self.outputDisplay.text = String(self.converterModel.convertUnits(data: Double(self.numberString)!, controller: self.converterInt)) + self.converterArray[self.converterInt].outputUnit
            }
            
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.converterInt = 1
            
            if(self.numberString == ""){
                self.outputDisplay.text = self.converterArray[self.converterInt].outputUnit
                self.inputDisplay.text = self.converterArray[self.converterInt].inputUnit
            } else {
                self.inputDisplay.text = self.numberString + self.converterArray[self.converterInt].inputUnit
                self.outputDisplay.text = String(self.converterModel.convertUnits(data: Double(self.numberString)!, controller: self.converterInt)) + self.converterArray[self.converterInt].outputUnit
            }
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.converterInt = 2
            
            if(self.numberString == ""){
                self.outputDisplay.text = self.converterArray[self.converterInt].outputUnit
                self.inputDisplay.text = self.converterArray[self.converterInt].inputUnit
            } else {
                self.inputDisplay.text = self.numberString + self.converterArray[self.converterInt].inputUnit
                self.outputDisplay.text = String(self.converterModel.convertUnits(data: Double(self.numberString)!, controller: self.converterInt)) + self.converterArray[self.converterInt].outputUnit
            }
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            
            self.converterInt = 3
            
            if(self.numberString == ""){
                self.outputDisplay.text = self.converterArray[self.converterInt].outputUnit
                self.inputDisplay.text = self.converterArray[self.converterInt].inputUnit
            } else {
                self.inputDisplay.text = self.numberString + self.converterArray[self.converterInt].inputUnit
                self.outputDisplay.text = String(self.converterModel.convertUnits(data: Double(self.numberString)!, controller: self.converterInt)) + self.converterArray[self.converterInt].outputUnit
            }
        }))
        
        self.present(alert, animated: true, completion: nil)
    }
    
    @IBAction func clearButtonPress(_ sender: Any) {
        numberString = ""
        self.inputDisplay.text = converterArray[converterInt].inputUnit
        self.outputDisplay.text = converterArray[converterInt].outputUnit
    }
    
    @IBAction func invertButtonPress(_ sender: Any) {
        if(numberString != ""){
            let newNumber = Double(numberString)! * -1
            numberString = String(newNumber)
            
            self.inputDisplay.text = numberString + converterArray[converterInt].inputUnit
            self.outputDisplay.text = String(converterModel.convertUnits(data: Double(numberString)!, controller: converterInt)) + converterArray[converterInt].outputUnit
        }
    }
    
    @IBAction func numberButtonPress(_ sender: AnyObject) {
        guard let button = sender as? UIButton else {
            return
        }
        
        if(button.tag == 10){
            numberString += "."
        } else {
            numberString += String(button.tag)
        }
        
        self.inputDisplay.text = numberString + converterArray[converterInt].inputUnit
        self.outputDisplay.text = String(converterModel.convertUnits(data: Double(numberString)!, controller: converterInt)) + converterArray[converterInt].outputUnit
        
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        converterArray =  [Converter(label: "fahrenheit to celcius", inputUnit: "°F", outputUnit: "°C"),
                           Converter(label: "celcius to fahrenheit", inputUnit: "°C", outputUnit: "°F"),
                           Converter(label: "miles to kilometers", inputUnit: "mi", outputUnit: "km"),
                           Converter(label: "kilometers to miles", inputUnit: "km", outputUnit: "mi")]
        
        
        outputDisplay.text = converterArray[0].outputUnit
        inputDisplay.text = converterArray[0].inputUnit
        //do other things
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
