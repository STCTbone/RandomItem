//
//  Item.swift
//  RandomItems
//
//  Created by Matthew Rieger on 6/24/14.
//  Copyright (c) 2014 Matthew Rieger. All rights reserved.
//

import Cocoa
import Foundation

class Item: NSObject {
    var itemName:String
    var serialNumber:String
    var valueInDollars:Int
    var dateCreated:NSDate
    let A = "A"
    let zero = "0"
    
    init(name:String, valueInDollars value: Int, serialNumber sNumber:String) {
        itemName = name
        valueInDollars = value
        serialNumber = sNumber
        dateCreated = NSDate.date()
        super.init()
    }
    
    convenience init(name:String) {
        self.init(name: name, valueInDollars: 0, serialNumber:"")
    }
    
    convenience init() {
        self.init(name: "No name", valueInDollars: 0, serialNumber: "")
    }
    
    func description() -> String {
        return "\(itemName) \(serialNumber): Worth \(valueInDollars), recorded on \(dateCreated)."
    }
    
    class func randomNumber() -> String {
        return String(UInt32("0") + arc4random() % UInt32(10))
    }
    
    class func randomLetter() -> String {
        return String(UInt32("A") + arc4random() % UInt32(26))
    }
    
    
    
    convenience init(randomItem:Bool) {
        let randomAdjectiveList = ["Fluffy", "Rusty", "Shiny"]
        let randomNounList = ["Bear", "Spork", "Mac"]
        
        let adjectiveIndex = arc4random() % UInt32(randomAdjectiveList.count)
        let nounIndex = arc4random() % UInt32(randomNounList.count)
        
        let randomName = "\(randomAdjectiveList[Int(adjectiveIndex)]) \(randomNounList[Int(nounIndex)])"
        let randomValue = Int(arc4random() % 100)
        let randomSerial = "\(Item.randomLetter())\(Item.randomNumber())\(Item.randomLetter())\(Item.randomNumber())"
        self.init(name: randomName, valueInDollars: randomValue, serialNumber: randomSerial)
    }
}
