//
//  ViewController.swift
//  solitaire
//
//  Created by 여주안 on 2017. 1. 23..
//  Copyright © 2017년 여주안. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
        let load = solitaireDeck()
        let array52 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"]
        var ranArray = load.shuffleCards(imgNameGroup: array52)
        var whereY = 100
        var whereX = 26
        var stackArray : [UIImageView] = []
        var zero = 0
        for a in 1...7 {
            for _ in 1...a {
                let image = UIImageView(frame: CGRect(x: whereX, y: whereY, width: 130, height: 150))
                whereY += 40
                stackArray.append(image)
            }
            whereY = 100
            whereX += 140
        }
        for c in 0...23 {
            let image = UIImageView(frame: CGRect(x: 26 + 24 * c, y: 500, width: 130, height: 150))
            stackArray.append(image)
        }
        for rptImage in stackArray {
            rptImage.image = UIImage(named: ranArray[zero])
            rptImage.alpha = 1
            zero += 1
        }
        for rptImage2 in stackArray {
            self.view.addSubview(rptImage2)
        }
        var button = UIButton(frame: CGRect(x: 26, y: 350, width: 130, height: 50))
        button.setTitle("좐", for: .normal)
        button.setTitleColor(UIColor.blue, for: .normal)
        button.addTarget(self, action: #selector(buttonTouched(sender:)), for: UIControlEvents.touchUpInside)
        self.view.addSubview(button)
        
        
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    func buttonTouched(sender : UIButton) {
        for _ in 0...51 {
            self.view.subviews[2].removeFromSuperview()
        }
        let load = solitaireDeck()
        let array52 = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10", "11", "12", "13", "14", "15", "16", "17", "18", "19", "20", "21", "22", "23", "24", "25", "26", "27", "28", "29", "30", "31", "32", "33", "34", "35", "36", "37", "38", "39", "40", "41", "42", "43", "44", "45", "46", "47", "48", "49", "50", "51", "52"]
        var ranArray = load.shuffleCards(imgNameGroup: array52)
        var whereY = 100
        var whereX = 26
        var stackArray : [UIImageView] = []
        var zero = 0
        for a in 1...7 {
            for _ in 1...a {
                let image = UIImageView(frame: CGRect(x: whereX, y: whereY, width: 130, height: 150))
                whereY += 40
                stackArray.append(image)
            }
            whereY = 100
            whereX += 140
        }
        for c in 0...23 {
            let image = UIImageView(frame: CGRect(x: 26 + 24 * c, y: 500, width: 130, height: 150))
            stackArray.append(image)
        }
        for rptImage in stackArray {
            rptImage.image = UIImage(named: ranArray[zero])
            rptImage.alpha = 1
            zero += 1
        }
        for rptImage2 in stackArray {
            self.view.addSubview(rptImage2)
        }
        self.view.exchangeSubview(at: 2, withSubviewAt: 54)

    }

}

