//
//  NSDictionary.swift
//  Extensions
//
//  Created by Earncef Sequeira on 24/10/15.
//  Copyright © 2015 Earncef Sequeira. All rights reserved.
//

import Foundation

extension NSDictionary {
    
    func floatValue(key:AnyObject) -> Float {
        if let value = self.objectForKey(key) as? NSNumber {
            return value.floatValue
        }
        if let value = self.objectForKey(key) as? NSString {
            return value.floatValue
        }
        return 0.0
    }
    
    func intValue(key:AnyObject) -> Int {
        if let value = self.objectForKey(key) as? NSNumber {
            return value.integerValue
        }
        if let value = self.objectForKey(key) as? NSString {
            return value.integerValue
        }
        return 0
    }
    
    func stringValue(key:AnyObject) -> String {
        if let value = self.objectForKey(key) as? String {
            return value
        }
        return ""
    }
}

