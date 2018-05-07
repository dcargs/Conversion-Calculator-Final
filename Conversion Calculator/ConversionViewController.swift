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
    
    @IBOutlet weak var outputDisplay: UITextField!
    @IBOutlet weak var inputDisplay: UITextField!
    
    @IBAction func converterButtonClick(_ sender: Any) {
        let alert = UIAlertController(title: "Choose Converter", message: nil, preferredStyle: UIAlertControllerStyle.actionSheet)
        
        alert.addAction(UIAlertAction(title: converterArray[0].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[0].outputUnit
            self.inputDisplay.text = self.converterArray[0].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[1].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[1].outputUnit
            self.inputDisplay.text = self.converterArray[1].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[2].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[2].outputUnit
            self.inputDisplay.text = self.converterArray[2].inputUnit
        }))
        
        alert.addAction(UIAlertAction(title: converterArray[3].label, style: UIAlertActionStyle.default, handler: {
            (alertAction) -> Void in
            self.outputDisplay.text = self.converterArray[3].outputUnit
            self.inputDisplay.text = self.converterArray[3].inputUnit
        }))
        
        self.present(alert, animated: true, completion: nil)
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
