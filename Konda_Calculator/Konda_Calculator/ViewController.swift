//
//  ViewController.swift
//  Konda_Calculator
//
//  Created by Konda,Rahul on 2/16/22.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var displayOutlet: UILabel!
    
    var num1=""
    var num2=""
    var res=""
    var operation=""
    var operationChanged = false
    var currNum2 = ""
    var inChainmode = false
    
    @IBAction func buttonC(_ sender: UIButton) {
        num2 = ""
    }
    
    @IBAction func plusandminusButton(_ sender: UIButton) {
        
           if num1 != "" {
               
               displayOutlet.text = "-" + displayOutlet.text!
               num1 = "\(displayOutlet.text!)"
               
               print("num 1 is \(num1)")
               print("num 2 is \(num2)")
           }
           else{
               displayOutlet.text = "-" + displayOutlet.text!
               num2 = "\(displayOutlet.text!)"
               print("num 1 is \(num1)")
               print("num 2 is \(num2)")
           }
           
    }
    
    @IBAction func buttonDivide(_ sender: UIButton) {
        let temp = calTemp(operation)
        operation = "/"
        displayOutlet.text = (temp != "") ? resultFormatter(temp) : ""
        if temp != "" {
            //            inChainmode = true
            if num2 != ""{
                inChainmode = true
                //            number1 = temp
                if operationChanged {
                    res = String(Double(temp)! / Double(num2)!)
                    print(res)
                    if res == "inf"{
                        displayOutlet.text! = "Error"
                    }else{
                        displayOutlet.text! = resultFormatter(res)
                    }
                }
            }
        }
        operationChanged = true
    }


    @IBAction func multiplyButton(_ sender: UIButton) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "*"
        currNum2=""
        displayOutlet.text = (temp != "") ? resultFormatter(temp) : ""
        operationChanged=true
    }
    
    @IBAction func minusButton(_ sender: UIButton) {
        let temp = calTemp(operation)
        operation = "-"
        displayOutlet.text = (temp != "") ? resultFormatter(temp) : ""
        if temp != "" {
            //            inChainmode = true
            if num2 != ""{
                inChainmode = true
                currNum2 = num2;
                if operationChanged {
                    res = String(Double(temp)! - Double(num2)!)
                    displayOutlet.text! = resultFormatter(res)
                }
            }
        }
        operationChanged = true
    }
    
    @IBAction func plusButton(_ sender: UIButton) {
        let temp = calTemp(operation)
        print("temp is \(temp)")
        operation = "+"
        currNum2=""
        displayOutlet.text = (temp != "") ? resultFormatter(temp) : ""
        operationChanged=true
    }
    
    @IBAction func equalsButton(_ sender: UIButton) {
        var res = ""
        switch operation {
        case "+":
            if currNum2 != "" {
                res = String(Double(num1)! + Double(currNum2)!)
                displayOutlet.text = resultFormatter(res)
                 num2 = currNum2
            }else{
                res = String(Double(num1)! + Double(num2)!)
                displayOutlet.text = resultFormatter(res)
            }
            num1 = res
            
            break
        case "*":
            if currNum2 != "" {
                res = String(Double(num1)! * Double(currNum2)!)
                displayOutlet.text = resultFormatter(res)
                //                num2 = ""
            }else{
                res = String(Double(num1)! * Double(num2)!)
                displayOutlet.text = resultFormatter(res)
            }
            num1 = res
            
            break
        case "-":
            if currNum2 != "" {
                res = String(Double(num1)! - Double(currNum2)!)
                displayOutlet.text = resultFormatter(res)
                //                number2 = ""
            }else{
                res = String(Double(num1)! - Double(num2)!)
                displayOutlet.text = resultFormatter(res)
            }
            num1 = res
           
            break
        case "/":
            if displayOutlet.text == "Error"{
                clearScreen()
            }else{
                if currNum2 != "" {
                    res = String(Double(num1)! / Double(currNum2)!)
                    if res == "inf"{
                        displayOutlet.text! = "Error"
                        return
                    }else{
                        displayOutlet.text = resultFormatter(res)
                        //                        number2 = ""
                    }
                }else{
                    res = String(Double(num1)! / Double(num2)!)
                    if res == "inf"{
                        displayOutlet.text! = "Error"
                        return
                    }else{
                        displayOutlet.text = resultFormatter(res)
                    }
                }
                num1 = res
                //                num2 = ""
            }
            break
        default:
            print("Nothing")
        }
    }
    
    @IBAction func buttonPercentage(_ sender: UIButton) {
        let temp = calTemp(operation)
        operation = "%"
        displayOutlet.text = (temp != "") ? resultFormatter(temp) : ""
        if temp != "" {
            //            inChainmode = true
            if num2 != ""{
                inChainmode = true
                //            number1 = temp
                if operationChanged {
                    res = String(Double(temp)! % Double(num2)!)
                    print(res)
                    if res == "inf"{
                        displayOutlet.text! = "Error"
                    }else{
                        displayOutlet.text! = resultFormatter(res)
                    }
                }
            }
        }
        operationChanged = true
    }
    
    @IBAction func buttonAC(_ sender: UIButton) {
        clearScreen()
    }
    
    @IBAction func buttonNine(_ sender: UIButton) {
        setData("9")
    }
    
    @IBAction func buttonEight(_ sender: UIButton) {
        setData("8")
    }
    
    @IBAction func buttonSeven(_ sender: UIButton) {
        setData("7")
    }
    
    @IBAction func buttonSix(_ sender: UIButton) {
        setData("6")
    }
    
    @IBAction func buttonFive(_ sender: UIButton) {
        setData("5")
    }
    
    @IBAction func buttonFour(_ sender: UIButton) {
        setData("4")
    }
    
    @IBAction func buttonThree(_ sender: UIButton) {
        setData("3")
    }
    
    @IBAction func buttonTwo(_ sender: UIButton) {
        setData("2")
    }
    
    @IBAction func buttonOne(_ sender: UIButton) {
        setData("1")
    }
    
    @IBAction func buttonZero(_ sender: UIButton) {
        setData("0")
    }
    
    @IBAction func buttonDot(_ sender: UIButton) {
        setData(".")
    }
    
    func clearScreen(){
        num2 = ""
        num1 = ""
        operationChanged = false
        operation = ""
        currNum2 = ""
        displayOutlet.text = "0"
        displayOutlet.textColor = .red
        inChainmode=false
    }

    func setData(_ number: String){
        if displayOutlet.text == "0"{
            displayOutlet.text = ""
            displayOutlet.textColor = .white
        }
        if !operationChanged {
            displayOutlet.text! += number
            num1 += number
        }else{
            print(inChainmode)
            if !inChainmode {
                displayOutlet.text! += number
                num2 += number
            }else {
                displayOutlet.text = ""
                displayOutlet.text! += number
                num2 += number
            }
        }
    }

    func calTemp(_ operation:String)->String {
        print("\(num1),\(num2)")
        if num1 != "" && num2 != ""{
            if operation == "+"{
                num1 = String(Double(num1)! + Double(num2)!)
                currNum2 = num2
                num2 = ""
                return String(num1)
            }
            if operation == "-"{
                num1 = String(Double(num1)! - Double(num2)!)
                currNum2 = num2
                num2 = ""
                return String(num1)
            }
            if operation == "*"{
                num1 = String(Double(num1)! * Double(num2)!)
                currNum2 = num2
                num2 = ""
                return String(num1)
            }
            if operation == "/"{
                num1 = String(Double(num1)! / Double(num2)!)
                currNum2 = num2
                num2 = ""
                return String(num1)
            }
            if operation == "%"{
                num1 = String(Double(num1).remainder(dividingBy: Double(num2!)))
                currNum2 = num2
                num2 = ""
                return String(num1)
            }
        }
        return ""
    }

    func resultFormatter(_ result:String)->String {
        let value = Double(result)!
        var resultStr = String(round(value * 100000) / 100000.0)
        if resultStr.contains(".0"){
            resultStr.removeSubrange(resultStr.index(resultStr.endIndex, offsetBy: -2)..<resultStr.endIndex)
        }
        return resultStr
    }


    
}
