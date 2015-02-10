//
//  TipCalculatorModel.swift
//  TipCalculator
//
//  Created by raphaelivan on 2/9/15.
//  Copyright (c) 2015 raphaelivan. All rights reserved.
//

import Foundation

class TipCalculatorModel {
    var total: Double
    var taxPct: Double
    var subtotal: Double {
        get {
            return total / (taxPct + 1)
        }
    }
    
    init(total: Double, taxPct: Double) {
        self.total  = total
        self.taxPct = taxPct
    }
    
    func calcTipWithTipPct(tipPct: Double) -> Double {
        return subtotal * tipPct
    }
    
    func printNumber(number: Double) {
        println("number is \(number)")
    }
    
    
    func returnPossibleTips() -> [Int: Double] {
        let tips = [0.15, 0.18, 0.20]
        var retval = [Int: Double]()
        for tip in tips {
            let intPct = Int(tip * 100)            
            retval[intPct] = calcTipWithTipPct(tip)
        }
        return retval
    }
}


