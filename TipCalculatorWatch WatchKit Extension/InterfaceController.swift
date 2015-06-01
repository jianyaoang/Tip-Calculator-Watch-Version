//
//  InterfaceController.swift
//  TipCalculatorWatch WatchKit Extension
//
//  Created by VLT Labs on 6/1/15.
//  Copyright (c) 2015 Jay Ang. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    @IBOutlet weak var totalBillAmountLabel: WKInterfaceLabel!
    @IBOutlet weak var tenPercentButton: WKInterfaceButton!
    
    @IBOutlet weak var fifteenPercentButton: WKInterfaceButton!
    
    @IBOutlet weak var twentyButtonPressed: WKInterfaceButton!
    var totalBillAmount = 0
    
    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
    }

    override func willActivate() {
        super.willActivate()
    }

    override func didDeactivate() {
        super.didDeactivate()
    }


    @IBAction func sliderAmount(value: Float) {
        
        self.totalBillAmountLabel.setText("\(value)")
        self.totalBillAmount = Int(value)
    }
    
    @IBAction func onTenPercentButtonPressed() {
        println("ten")
        
        var contextDictionary = ["totalBillAmount":self.totalBillAmount, "tipAmount":10]
        
        self.pushControllerWithName("resultsController", context: contextDictionary)
    }

    @IBAction func onFifteenPercentButtonPressed() {
        println("fifteen")
        var contextDictionary = ["totalBillAmount":self.totalBillAmount, "tipAmount":15]
        self.pushControllerWithName("resultsController", context: contextDictionary)
    }
    

    @IBAction func onTwentyPrecentButtonPressed() {
        println("twenty")
        
        var contextDictionary = ["totalBillAmount":self.totalBillAmount, "tipAmount":20]
        self.pushControllerWithName("resultsController", context: contextDictionary)
    }
    

    
    
}
