//
//  ViewController.swift
//  MYCandle
//
//  Created by 여주안 on 2017. 1. 11..
//  Copyright © 2017년 여주안. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var CandleImage: UIImageView!
    @IBOutlet weak var titleLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("viewDidLoad")
    }
    
    @IBAction func buttonTouched(_ sender: Any) {
        print("Button Touched")
        let button = sender as! UIButton
        
        button.backgroundColor = UIColor.black
        CandleImage.image = UIImage(named: "candleOn.jpeg")
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
}

