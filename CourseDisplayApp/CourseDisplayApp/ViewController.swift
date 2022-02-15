//
//  ViewController.swift
//  CourseDisplayApp
//
//  Created by Konda,Rahul on 2/10/22.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var displayImage: UIImageView!
    
    @IBOutlet weak var crsNum: UILabel!
    
    @IBOutlet weak var crsTitle: UILabel!
    
    @IBOutlet weak var crsSem: UILabel!
    
    @IBOutlet weak var previousButton: UIButton!
    
    @IBOutlet weak var nextButton: UIButton!
    
    let courses = [["img01", "44555", "Network Security", "Fall 2022"],
    ["img02", "44643", "iOS", "Fall 2022"],
    ["img03", "44656", "Data Streaming", "Fall 2022"]]
    
    var imageNumber = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
       updateUI(imageNumber)
        previousButton.isEnabled = false
    }

    @IBAction func previousButtonClicked(_ sender: UIButton) {
        nextButton.isEnabled = true
        imageNumber = imageNumber - 1
        updateUI(imageNumber)
        if(imageNumber == 0){
            previousButton.isEnabled = false
        }
    }
    
    @IBAction func nextButtonClicked(_ sender: UIButton) {
        imageNumber = imageNumber + 1
        updateUI(imageNumber)
        previousButton.isEnabled = true
        if(imageNumber == courses.count-1){
            nextButton.isEnabled = false
        }
    }
    
    func updateUI(_ imageNum: Int) {
        
        // Do any additional setup after loading the view.
        displayImage.image = UIImage(named: courses[imageNumber][0])
        crsNum.text = courses[imageNumber][1]
        crsTitle.text = courses[imageNumber][2]
        crsSem.text = courses[imageNumber][3]
        //previousButton.isEnabled = false
    }
}

