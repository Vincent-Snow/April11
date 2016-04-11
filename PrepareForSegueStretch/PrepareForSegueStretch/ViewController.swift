//
//  ViewController.swift
//  PrepareForSegueStretch
//
//  Created by mac-admin on 4/11/16.
//  Copyright © 2016 Vints. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var firstTextField: UITextField!
    @IBOutlet weak var secondTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func firstButtonTapped(sender: AnyObject) {
        
    }
    
    @IBAction func secondButtonTapped(sender: AnyObject) {
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "toSecondVC" {
            if let text = firstTextField.text {
                if let secondViewController = segue.destinationViewController as? SecondViewController {
                    secondViewController.textFieldInfo = text
                }
                
            }
            
            
        } else if segue.identifier == "toThirdVC" {
            
            
            
        }
    
}

