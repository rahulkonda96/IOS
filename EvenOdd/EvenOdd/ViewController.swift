//
//  ViewController.swift
//  EvenOdd
//
//  Created by Konda,Rahul on 2/8/22.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numValue: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func buttonClicked(_ sender: UIButton) {
        var num = Int(numValue.text!)
        if (num! % 2 == 0){
            displayLabel.text = "\(num!) is Even"
        }
        else{
            displayLabel.text = "\(num!) is Odd"
        }
        
        
    }
    
}

