//
//  ViewController.swift
//  TipCalculator
//
//  Created by Ishan Pandey on 5/9/17.
//  Copyright © 2017 Ishan Pandey. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var totalBillLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var tipControl: UISegmentedControl!
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func onTap(_ sender: Any) {
        view.endEditing(true)
    }
    @IBAction func updateTip(_ sender: Any) {
        let tips = [0.1, 0.15, 0.2]
        let price = Double(billField.text!) ?? 0
        let tip = price*tips[tipControl.selectedSegmentIndex]
        let total = price + tip
        tipLabel.text = "Tip: " + String(format: "$%.2f", tip)
        totalBillLabel.text = String(format: "$%.2f", total)
        
    }
}

