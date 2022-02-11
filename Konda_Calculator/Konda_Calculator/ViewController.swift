//
//  ViewController.swift
//  Konda_Calculator
//
//  Created by Konda,Rahul on 2/11/22.
//

import UIKit

class ViewController: UIViewController {

    @IBAction func buttonAC(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "AC"
    }
    
    @IBOutlet weak var displayOutlet: UILabel!
    
    @IBAction func buttonPlusandMinus(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "+/-"
    }
    
    @IBAction func buttonPercent(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "%"
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "/"
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "7"
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "8"
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "9"
    }
    
    @IBAction func buttonMultiply(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "*"
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "4"
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "5"
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "6"
    }
    
    @IBAction func buttonMinus(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "-"
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "1"
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "2"
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "3"
    }
    
    @IBAction func buttonPlus(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "+"
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "0"
    }
    
    @IBAction func buttonC(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "C"
    }
    
    @IBAction func buttonDecimal(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "."
    }
    
    @IBAction func buttonEquals(_ sender: UIButton) {
        displayOutlet.text = displayOutlet.text! + "="
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

