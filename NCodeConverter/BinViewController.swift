//
//  BinViewController.swift
//  NCodeConverter
//
//  Created by Joao Batista Rocha Jr. on 15/10/15.
//  Copyright © 2015 Joao Batista Rocha Jr. All rights reserved.
//

import UIKit
import QuartzCore

infix operator ^^ { }
func ^^ (radix: Int, power: Int) -> Int {
    return Int(pow(Double(radix), Double(power)))
}

class BinViewController: UIViewController {
    
    @IBOutlet weak var binInputImageView: UIImageView!
    @IBOutlet weak var binResultsImageView: UIImageView!
    @IBOutlet weak var binConvertButton: UIButton!
    @IBOutlet weak var binDeleteButton: UIButton!
    
    @IBOutlet weak var binInputLabel: UILabel!
    @IBOutlet weak var decResultsLabel: UILabel!
    @IBOutlet weak var hexaResultsLabel: UILabel!
    
    @IBOutlet weak var zeroBinButton: UIButton!
    @IBOutlet weak var oneBinButton: UIButton!
    
    @IBOutlet var binaryTitle: UILabel!

    var counterBin = 0
    var binBinNumber = 0
    var arrBinNumber = [Int]()
    var arrCounter = 0
    var binDecResult = 0
    var binHexaArray = [Int]()
    var binHexaResultArray = [Int]()
    var binHexaRsultStringArray = [String]()
    var indCounter = 0
    var sumHexa = 0
    var expBinBase = 0
    var counterHexa = 0
    var x = 0
    
    
    @IBAction func zeroBinButton(sender: AnyObject) {
        
        if counterBin == 0 {
            
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, start up with a digit different from 0!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
        }
        else {
            
        
        binInputLabel.text = binInputLabel.text! + "0"
        counterBin = counterBin + 1
        counterHexa = counterHexa + 1
        binHexaArray.append(0)
        arrBinNumber.append(0)
        
        
        if counterBin == 28 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 28 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
            zeroBinButton.enabled = false
            oneBinButton.enabled = false
        }
        
    }
    }

    @IBAction func oneBinButton(sender: AnyObject) {
        binInputLabel.text = binInputLabel.text! + "1"
        counterBin = counterBin + 1
        counterHexa = counterHexa + 1
        binHexaArray.append(1)
        arrBinNumber.append(1)
        
        if counterBin == 28 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 28 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
            zeroBinButton.enabled = false
            oneBinButton.enabled = false
        }

    }
    
    @IBAction func binConvertButton(sender: AnyObject) {
        
        if binInputLabel.text == "" {
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, type a valid binary number!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
            
        }
        
        
        
        if binInputLabel.text != "" {
            
            binConvertButton.enabled = false
            
            zeroBinButton.enabled = false
            oneBinButton.enabled = false
        
        counterBin = counterBin - 1
        
        while counterBin >= 0 {
            binBinNumber = arrBinNumber[arrCounter] * (2 ^^ counterBin)
            counterBin = counterBin - 1
            arrCounter = arrCounter + 1
            binDecResult = binDecResult + binBinNumber
        
    }
        decResultsLabel.text = "\(binDecResult)" + " (dec)"
    
        indCounter = counterHexa
        indCounter--
    
        while indCounter >= 0 {
            sumHexa = sumHexa + (binHexaArray[indCounter] * (2 ^^ expBinBase))
            indCounter = indCounter - 1
            expBinBase = expBinBase + 1
            
            
            
            if expBinBase != 4 && indCounter < 0 {
                binHexaResultArray.append(sumHexa)
            }
            
        if expBinBase == 4 && indCounter < 0 {
                binHexaResultArray.append(sumHexa)
            }
            if expBinBase == 4 && indCounter >= 0 {
                expBinBase = 0
                binHexaResultArray.append(sumHexa)
                sumHexa = 0
            }
            }
        
    
            binHexaRsultStringArray = binHexaResultArray.map {
            String($0)
        }
        
            x = binHexaRsultStringArray.count - 1
        while x >= 0 {
            switch binHexaRsultStringArray[x] {
            
                
                case "10":
                    binHexaRsultStringArray[x] = "A"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                case "11":
                    binHexaRsultStringArray[x] = "B"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                case "12":
                    binHexaRsultStringArray[x] = "C"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                case "13":
                    binHexaRsultStringArray[x] = "D"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                case "14":
                    binHexaRsultStringArray[x] = "E"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                case "15":
                    binHexaRsultStringArray[x] = "F"
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
                default:
                    hexaResultsLabel.text = hexaResultsLabel.text! + binHexaRsultStringArray[x]
                    x = x - 1
        
            }
            
        }
        hexaResultsLabel.text =  hexaResultsLabel.text! + " (hexa)"
        binInputLabel.text = binInputLabel.text! + "( bin)"
        
    }
        
    }
    
    @IBAction func binDeleteButton(sender: AnyObject) {
        counterBin = 0
        binBinNumber = 0
        arrCounter = 0
        arrBinNumber = []
        binDecResult = 0
        hexaResultsLabel.text = ""
        binHexaRsultStringArray = []
        binHexaResultArray = []
        binHexaArray = []
        x = 0
        sumHexa = 0
        indCounter = 0
        counterHexa = 0
        expBinBase = 0
        decResultsLabel.text = ""
        binInputLabel.text = ""
        zeroBinButton.enabled = true
        oneBinButton.enabled = true
        binConvertButton.enabled = true
        
        }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        binInputImageView.layer.cornerRadius = 5
        binResultsImageView.layer.cornerRadius = 5
        binConvertButton.layer.cornerRadius = 5
        binDeleteButton.layer.cornerRadius = 5
        binInputLabel.text = ""
        hexaResultsLabel.text = ""
        
        binaryTitle.layer.backgroundColor  = UIColor.whiteColor().CGColor
        binaryTitle.layer.cornerRadius = 5
        
       
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}
