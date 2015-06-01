//
//  ResultsInterfaceController.swift
//  TipCalculatorWatch
//
//  Created by VLT Labs on 6/1/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import WatchKit
import Foundation


class ResultsInterfaceController: WKInterfaceController {

    @IBOutlet weak var tipDollarLabel: WKInterfaceLabel!
    @IBOutlet weak var tipAmountLabel: WKInterfaceLabel!
    @IBOutlet weak var totalBillAmount: WKInterfaceLabel!
    @IBOutlet weak var finalAmountLabel: WKInterfaceLabel!
    
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)

        var contextDictionary = context as! [String:Int]
        
        var tipAmount = contextDictionary["tipAmount"]!
        var totalBillAmount = contextDictionary["totalBillAmount"]!
        var tipDollar = (totalBillAmount * tipAmount) / 100
        var finalAmount = totalBillAmount + tipDollar
        
        self.tipAmountLabel.setText("\(tipAmount)%  Tip:")
        self.totalBillAmount.setText("$\(totalBillAmount)")
        self.tipDollarLabel.setText("$\(tipDollar)")
        self.finalAmountLabel.setText("$\(finalAmount)")
    
    }
}
