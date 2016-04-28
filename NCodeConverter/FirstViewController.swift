//
//  FirstViewController.swift
//  NCodeConverter
//
//  Created by Joao Batista Rocha Jr. on 12/10/15.
//  Copyright © 2015 Joao Batista Rocha Jr. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    

    @IBAction func hexaButton(sender: AnyObject) {
        
    }
    
    
    @IBAction func decButton(sender: AnyObject) {
        
    }
    
    
    @IBAction func binButton(sender: AnyObject) {
        
    }
    
    @IBAction func instructionsButton(sender: AnyObject) {
        
        let uiAlert = UIAlertController(title: "Instructions", message: "You can convert numbers from Hexadecimal, Decimal and Binary bases. Click on one of them to be able to convert it in the other two bases! For instance, Binary will convert itself in Decimal and Hexadecimal and so on.", preferredStyle: UIAlertControllerStyle.Alert)
        self.presentViewController(uiAlert, animated: true, completion: nil)
        
        uiAlert.addAction(UIAlertAction(title: "Ok", style: .Default, handler: { action in
        }))
       
    }
    
    
    @IBOutlet var hexaButton: UIButton!
    
    @IBOutlet var decButton: UIButton!
    
    @IBOutlet var binButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        hexaButton.layer.cornerRadius = 36
        decButton.layer.cornerRadius = 36
        binButton.layer.cornerRadius = 36
        
    }
    
    override func preferredStatusBarStyle() -> UIStatusBarStyle {
        return UIStatusBarStyle.LightContent
    }

}

