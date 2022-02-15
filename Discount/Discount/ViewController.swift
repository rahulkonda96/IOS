//
//  ViewController.swift
//  Discount
//
//  Created by Konda,Rahul on 2/15/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var amountField: UITextField!
    
    @IBOutlet weak var discountField: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        var amt = Double(amountField.text!)!
        var dis = Double(discountField.text!)!
        var diff = Double(amt * (dis / 100))
        displayLabel.text = "Price after Discount is \(amt-diff)"
    }
}

