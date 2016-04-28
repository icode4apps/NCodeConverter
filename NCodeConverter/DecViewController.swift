//
//  DecViewController.swift
//  NCodeConverter
//
//  Created by Joao Batista Rocha Jr. on 15/10/15.
//  Copyright © 2015 Joao Batista Rocha Jr. All rights reserved.
//

import UIKit
import QuartzCore

class DecViewController: UIViewController {
    
    
    @IBOutlet weak var decConvertButton: UIButton!
    @IBOutlet weak var decDeleteButton: UIButton!
    @IBOutlet weak var decInputNumberLabel: UILabel!
    @IBOutlet weak var decInputNumberImageView: UIImageView!
    @IBOutlet weak var decDecResultLabel: UILabel!
    @IBOutlet weak var decResultsImageView: UIImageView!
    @IBOutlet weak var decBinResultLabel: UILabel!
    
    @IBOutlet weak var zeroDecButton: UIButton!
    @IBOutlet weak var oneDecButton: UIButton!
    @IBOutlet weak var twoDecButton: UIButton!
    @IBOutlet weak var threeDecButton: UIButton!
    @IBOutlet weak var fourDecButton: UIButton!
    @IBOutlet weak var fiveDecButton: UIButton!
    @IBOutlet weak var sixDecButton: UIButton!
    @IBOutlet weak var sevenDecButton: UIButton!
    @IBOutlet weak var eightDecButton: UIButton!
    @IBOutlet weak var nineDecButton: UIButton!
    
    @IBOutlet var decimalTitle: UILabel!
    
    var decNumber = 0
    var remainderDec = 0
    var quoDec = 0
    var binNumber = 0
    var quoBin = 0
    var remainderBin = 0
    var decCounter = 0
    
    
    @IBAction func zeroDecButton(sender: AnyObject) {
        
        if decCounter == 0 {
            
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, start up with a digit different from 0!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
        }
        else {
        decInputNumberLabel.text = decInputNumberLabel.text! + "0"
        decNumber = (decNumber * 10)
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    }
    
    @IBAction func oneDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "1"
        decNumber = (decNumber * 10) + 1
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func twoDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "2"
        decNumber = (decNumber * 10) + 2
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func threeDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "3"
        decNumber = (decNumber * 10) + 3
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func fourDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "4"
        decNumber = (decNumber * 10) + 4
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func fiveDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "5"
        decNumber = (decNumber * 10) + 5
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func sixDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "6"
        decNumber = (decNumber * 10) + 6
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func sevenDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "7"
        decNumber = (decNumber * 10) + 7
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func eightDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "8"
        decNumber = (decNumber * 10) + 8
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    @IBAction func nineDecButton(sender: AnyObject) {
        decInputNumberLabel.text = decInputNumberLabel.text! + "9"
        decNumber = (decNumber * 10) + 9
        binNumber = decNumber
        decCounter++
        
        if decCounter == 9 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 9 digits!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false
            
        }

    }
    
    
    @IBAction func decConvertButton(sender: AnyObject) {
        
        if decInputNumberLabel.text == "" {
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, type a valid decimal number!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: nil))
            
        }
        else {
            
            
            decConvertButton.enabled = false
            zeroDecButton.enabled = false
            oneDecButton.enabled = false
            twoDecButton.enabled = false
            threeDecButton.enabled = false
            fourDecButton.enabled = false
            fiveDecButton.enabled = false
            sixDecButton.enabled = false
            sevenDecButton.enabled = false
            eightDecButton.enabled = false
            nineDecButton.enabled = false

        
        while decNumber >= 16 {
            
            remainderDec = decNumber % 16
            quoDec = decNumber / 16
            
            switch remainderDec {
            case 10:
                decDecResultLabel.text = "A" + decDecResultLabel.text!
                decNumber = quoDec
            case 11:
                decDecResultLabel.text = "B" + decDecResultLabel.text!
                decNumber = quoDec
            case 12:
                decDecResultLabel.text = "C" + decDecResultLabel.text!
                decNumber = quoDec
            case 13:
                decDecResultLabel.text = "D" + decDecResultLabel.text!
                decNumber = quoDec
            case 14:
                decDecResultLabel.text = "E" + decDecResultLabel.text!
                decNumber = quoDec
            case 15:
                decDecResultLabel.text = "F" + decDecResultLabel.text!
                decNumber = quoDec
            default:
                decDecResultLabel.text = "\(remainderDec)" + decDecResultLabel.text!
                decNumber = quoDec
            }
        }
        
        decDecResultLabel.text = "\(decNumber)" + decDecResultLabel.text! + " (hexa)"
        
        while binNumber >= 2 {
            
            remainderBin = binNumber % 2
            quoBin = binNumber / 2
            decBinResultLabel.text = "\(remainderBin)" + decBinResultLabel.text!
            binNumber = quoBin
        }
        
        decBinResultLabel.text = "\(binNumber)" + decBinResultLabel.text! + " (bin)"
        decInputNumberLabel.text = decInputNumberLabel.text! + " (dec)"
        
    }
     
    }
    
    @IBAction func decDeleteButton(sender: AnyObject) {
        decNumber = 0
        remainderDec = 0
        decDecResultLabel.text = ""
        quoDec = 0
        decInputNumberLabel.text = ""
        decBinResultLabel.text = ""
        decCounter = 0
        
        zeroDecButton.enabled = true
        oneDecButton.enabled = true
        twoDecButton.enabled = true
        threeDecButton.enabled = true
        fourDecButton.enabled = true
        fiveDecButton.enabled = true
        sixDecButton.enabled = true
        sevenDecButton.enabled = true
        eightDecButton.enabled = true
        nineDecButton.enabled = true
        decConvertButton.enabled = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        decConvertButton.layer.cornerRadius = 5
        decDeleteButton.layer.cornerRadius = 5
        decInputNumberImageView.layer.cornerRadius = 5
        decResultsImageView.layer.cornerRadius = 5
        
        decimalTitle.layer.backgroundColor = UIColor.whiteColor().CGColor
        decimalTitle.layer.cornerRadius = 5
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}
