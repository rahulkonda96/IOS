//
//  ViewController.swift
//  VowelTester
//
//  Created by Konda,Rahul on 1/25/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textOutlet: UITextField!
    
    @IBOutlet weak var displayLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func buttonClicked(_ sender: UIButton) {
        var enteredText = textOutlet.text!
        if (enteredText.contains ("a") ||
            enteredText.contains ("e") ||
            enteredText.contains ("i") ||
            enteredText.contains ("o") ||
            enteredText.contains ("u") ||
            enteredText.contains ("A") ||
            enteredText.contains ("E") ||
            enteredText.contains ("I") ||
            enteredText.contains ("O") ||
            enteredText.contains ("U") )
        {
            displayLabel.text = "There are vowels in the text."
        }
        else
        {
            displayLabel.text = "There are no vowels in the text."
        }
    }
}

