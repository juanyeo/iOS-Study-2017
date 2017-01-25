//
//  ViewController.swift
//  socialNumber
//
//  Created by 여주안 on 2017. 1. 25..
//  Copyright © 2017년 여주안. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    let load = checkSocialNum()
    let load2 = originCheck()
    var inputText1 : UITextField = UITextField()
    var inputText2 : UITextField = UITextField()
    var colorVar : UIView = UIView()
    override func viewDidLoad() {
        super.viewDidLoad()
        let text = UILabel(frame: CGRect(x: 26, y: 50, width: 100, height: 30))
        text.text = "주민번호"
        self.view.addSubview(text)
        inputText1 = UITextField(frame: CGRect(x: 26, y: 90, width: 80, height: 30))
        inputText1.placeholder = "앞 6자리"
        inputText1.borderStyle = .roundedRect
        self.view.addSubview(inputText1)
        let hypLabel = UILabel(frame: CGRect(x: 110, y: 90, width: 10, height: 30))
        hypLabel.text = "-"
        self.view.addSubview(hypLabel)
        inputText2 = UITextField(frame: CGRect(x: 125, y: 90, width: 95, height: 30))
        inputText2.placeholder = "뒤 7자리"
        inputText2.borderStyle = .roundedRect
        self.view.addSubview(inputText2)
        colorVar = UIView(frame: CGRect(x: 26, y: 125, width: 194, height: 15))
        colorVar.backgroundColor = UIColor.darkGray
        self.view.addSubview(colorVar)
        let button = UIButton(frame: CGRect(x: 26, y: 180, width: 70, height: 50))
        button.setTitle("검사", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.titleLabel?.textAlignment = .center
        button.addTarget(self, action: #selector(buttonTouched(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func buttonTouched(sender : UIButton) {
        if load2.originCheck(str1: inputText1.text!, str2: inputText2.text!) == 1 {
            let checkKey = load.checkThat(str1: inputText1.text!, str2: inputText2.text!)
            let checkLock = Int(inputText2.text!)! % 10
            if checkKey == checkLock {
                colorVar.backgroundColor = UIColor.green
            }
            else {
                colorVar.backgroundColor = UIColor.red
            }
        }
        else {
            colorVar.backgroundColor = UIColor.orange
        }
            }
    


}

