//
//  ViewController.swift
//  Counter
//
//  Created by GSM04 on 2022/07/11.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var plusButton: UIButton!
        @IBOutlet weak var minusButton: UIButton!
        @IBOutlet weak var resetButton: UIButton!
        @IBOutlet weak var label: UILabel!
        
        var number: Int = 0
        var random = Int.random(in: -10...10)
        
        override func viewDidLoad() {
            super.viewDidLoad()
            label.textAlignment = .center
        }
        
        func color(){
            if number < random {
                label.textColor = UIColor.red
            }else if number == random{
                label.textColor = UIColor.green
            }else{
                label.textColor = UIColor.blue
            }
            self.label.text = "\(number)"
            
        }
        
        @IBAction func plusButton(_sender: Any){
            number += 1
            color()
        }
        @IBAction func minusButton(_sender: Any){
            number -= 1
            color()
        }
        @IBAction func resetButton(_sender: Any){
            random = Int.random(in: -10...10)
        }
}


