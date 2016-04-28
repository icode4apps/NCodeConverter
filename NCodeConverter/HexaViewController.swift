//
//  HexaViewController.swift
//  NCodeConverter
//
//  Created by Joao Batista Rocha Jr. on 12/10/15.
//  Copyright © 2015 Joao Batista Rocha Jr. All rights reserved.
//

import UIKit
import QuartzCore


class HexaViewController: UIViewController, UITextFieldDelegate {

    @IBAction func backButtonHexa(sender: UIButton) {
        
    }
    
    @IBOutlet weak var hexaNumber: UITextField!
    @IBOutlet var decResult: UILabel!
    @IBOutlet var binResult: UILabel!
    @IBOutlet weak var convertHexaButton: UIButton!
    @IBOutlet weak var deleteButton: UIButton!
    
    @IBOutlet weak var fButton: UIButton!
    @IBOutlet weak var zeroButton: UIButton!
    @IBOutlet weak var oneButton: UIButton!
    @IBOutlet weak var twoButton: UIButton!
    @IBOutlet weak var threeButton: UIButton!
    @IBOutlet weak var fourButton: UIButton!
    @IBOutlet weak var fiveButton: UIButton!
    @IBOutlet weak var sixButton: UIButton!
    @IBOutlet weak var sevenButton: UIButton!
    @IBOutlet weak var eightButton: UIButton!
    @IBOutlet weak var nineButton: UIButton!
    @IBOutlet weak var aButton: UIButton!
    @IBOutlet weak var bButton: UIButton!
    @IBOutlet weak var cButton: UIButton!
    @IBOutlet weak var dButton: UIButton!
    @IBOutlet weak var eButton: UIButton!
    
    @IBOutlet var hexaTitle: UILabel!
    
    @IBOutlet weak var resultsImageView: UIImageView!
    
    var counter: Int = 0
    var bin = ""
    var dec = 0
    
    
    @IBAction func convertHexaButton(sender: AnyObject) {
        
        if hexaNumber.text == "" {
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, type a valid hexadecimal number!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
        }
        else {

        binResult.text = "\(bin)" + " (bin)"
        decResult.text = "\(dec)" + " (dec)"
        hexaNumber.text = hexaNumber.text! + " (hexa)"
            
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
    }
    }
    
    @IBAction func zeroButton(sender: AnyObject) {
        
        if counter == 0 {
            let uiAlert = UIAlertController(title: "Oops!", message: "Please, start up with a digit different from 0!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            
        }
        else {
        hexaNumber.text = hexaNumber.text! + "0"
        bin = bin + "0000"
        dec = (dec * 16)
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    }
    
    @IBAction func oneButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "1"
        bin = bin + "0001"
        dec = (dec * 16) + 1
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
        
    }
    
    @IBAction func twoButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "2"
        bin = bin + "0010"
        dec = (dec * 16) + 2
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func threeButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "3"
        bin = bin + "0011"
        dec = (dec * 16) + 3
        counter = counter + 1
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func fourButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "4"
        bin = bin + "0100"
        dec = (dec * 16) + 4
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func fiveButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "5"
        bin = bin + "0101"
        dec = (dec * 16) + 5
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func sixButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "6"
        bin = bin + "0110"
        dec = (dec * 16) + 6
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func sevenButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "7"
        bin = bin + "0111"
        dec = (dec * 16) + 7
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func eightButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "8"
        bin = bin + "1000"
        dec = (dec * 16) + 8
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func nineButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "9"
        bin = bin + "1001"
        dec = (dec * 16) + 9
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func aButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "A"
        bin = bin + "1010"
        dec = (dec * 16) + 10
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func bButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "B"
        bin = bin + "1011"
        dec = (dec * 16) + 11
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func cButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "C"
        bin = bin + "1100"
        dec = (dec * 16) + 12
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func dButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "D"
        bin = bin + "1101"
        dec = (dec * 16) + 13
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func eButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "E"
        bin = bin + "1110"
        dec = (dec * 16) + 14
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
    }
    
    @IBAction func fButton(sender: AnyObject) {
        hexaNumber.text = hexaNumber.text! + "F"
        bin = bin + "1111"
        dec = (dec * 16) + 15
        counter = counter + 1
        
        if counter == 7 {
            let uiAlert = UIAlertController(title: "Oops!", message: "You have reached the limit of 7 hexadecimal numbers!", preferredStyle: UIAlertControllerStyle.Alert)
            self.presentViewController(uiAlert, animated: true, completion: nil)
            
            uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
            }))
            zeroButton.enabled = false
            oneButton.enabled = false
            twoButton.enabled = false
            threeButton.enabled = false
            fourButton.enabled = false
            fiveButton.enabled = false
            sixButton.enabled = false
            sevenButton.enabled = false
            eightButton.enabled = false
            nineButton.enabled = false
            aButton.enabled = false
            bButton.enabled = false
            cButton.enabled = false
            dButton.enabled = false
            eButton.enabled = false
            fButton.enabled = false
        }
        
    }
    
    @IBAction func deleteButton(sender: AnyObject) {
        hexaNumber.text = ""
        binResult.text = ""
        decResult.text = ""
        bin = ""
        counter = 0
        dec = 0
        
        zeroButton.enabled = true
        oneButton.enabled = true
        twoButton.enabled = true
        threeButton.enabled = true
        fourButton.enabled = true
        fiveButton.enabled = true
        sixButton.enabled = true
        sevenButton.enabled = true
        eightButton.enabled = true
        nineButton.enabled = true
        aButton.enabled = true
        bButton.enabled = true
        cButton.enabled = true
        dButton.enabled = true
        eButton.enabled = true
        fButton.enabled = true
        
    }
    
   
    
    override func viewDidLoad() {
        super.viewDidLoad()
        convertHexaButton.layer.cornerRadius = 5
        deleteButton.layer.cornerRadius = 5
        resultsImageView.layer.cornerRadius = 5
        
        hexaTitle.layer.backgroundColor = UIColor.whiteColor().CGColor
        hexaTitle.layer.cornerRadius = 5
        
        hexaNumber.enabled = false
    
        
    }
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }
    
    }
    
    
    
    

