//
//  NSArray.swift
//  Extensions
//
//  Created by Earncef Sequeira on 24/10/15.
//  Copyright © 2015 Earncef Sequeira. All rights reserved.
//

import Foundation

extension NSArray {
    func floatValue(index:Int) -> Float {
        if let value = self.objectAtIndex(index) as? NSNumber {
            return value.floatValue
        }
        if let value = self.objectAtIndex(index) as? NSString {
            return value.floatValue
        }
        return 0.0
    }
    
    func intValue(index:Int) -> Int {
        if let value = self.objectAtIndex(index) as? NSNumber {
            return value.integerValue
        }
        if let value = self.objectAtIndex(index) as? NSString {
            return value.integerValue
        }
        return 0
    }
    
    func stringValue(index:Int) -> String {
        if let value = self.objectAtIndex(index) as? String {
            return value
        }
        return ""
    }
}

