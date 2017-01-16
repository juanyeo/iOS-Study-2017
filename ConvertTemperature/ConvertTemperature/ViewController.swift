//
//  ViewController.swift
//  ConvertTemperature
//
//  Created by 여주안 on 2017. 1. 11..
//  Copyright © 2017년 여주안. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var inputBox: UITextField!
    @IBOutlet weak var fromC: UIButton!
    @IBOutlet weak var fromF: UIButton!
    @IBOutlet weak var resultBox: UITextField!
    var load = UITextField()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func fromCTouched(_ sender: Any) {
        let inputC = Double(inputBox.text!)
        var street1 = Measurement(value: inputC!, unit: UnitTemperature.celsius)
        street1.convert(to: UnitTemperature.fahrenheit)
        resultBox.text = "\(street1.value)℉"
    }
    @IBAction func fromFTouched(_ sender: Any) {
        let inputF = Double(inputBox.text!)
        var street2 = Measurement(value: inputF!, unit: UnitTemperature.fahrenheit)
        street2.convert(to: UnitTemperature.celsius)
        resultBox.text = "\(street2.value)℃"
    }
    }
