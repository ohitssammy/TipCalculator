//
//  ViewController.swift
//  Tip Calculator
//
//  Created by Sammy Truong on 1/17/20.
//  Copyright © 2020 Sammy Truong. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    @IBOutlet weak var tipControl: UISegmentedControl!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    @IBAction func onTap(_ sender: Any) {
        print("hello")
        view.endEditing(true)
        
    }
    @IBAction func CalculateTip(_ sender: Any) {
        
        //Get the bill amount
        //let is constant, does not change
        //if its not valid, change to 0 (strings etc)
        let bill = Double (billField.text!) ?? 0
        
        
        //Calculate tip and total
        let tipPercentage = [0.15,0.18,0.2]
        let tip = bill * tipPercentage[tipControl.selectedSegmentIndex]
        let total = bill + tip
        
        //Update tip and total
        //put variable included in string
        //%f for decimal, %d integers, %@ string
        //.2 for two decimnals .00
        TipLabel.text = String(format: "$%.2f", tip)
        TotalLabel.text = String(format: "$%.2f", total)
    

    
}

}
