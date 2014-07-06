//
//  main.swift
//  RandomItems
//
//  Created by Matthew Rieger on 6/24/14.
//  Copyright (c) 2014 Matthew Rieger. All rights reserved.
//

import Foundation

var items:Item[] = []
for index in 1...10 {
    items += Item(randomItem: true)
}



for item in items {
    NSLog("%@", item)
}