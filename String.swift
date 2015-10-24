//
//  String.swift
//  Extensions
//
//  Created by Earncef Sequeira on 24/10/15.
//  Copyright © 2015 Earncef Sequeira. All rights reserved.
//

import Foundation

extension String {
    var floatValue: Float {
        return (self as NSString).floatValue
    }
    
    var intValue: Int {
        return (self as NSString).integerValue
    }
    
    func contains(aString:String, caseSensitive:Bool = false) -> Bool {
        if caseSensitive {
            return self.rangeOfString(aString) != nil
        }
        return self.rangeOfString(aString, options: NSStringCompareOptions.CaseInsensitiveSearch) != nil
    }
    
    var lastPathComponent: String {
        get {
            return (self as NSString).lastPathComponent
        }
    }
    var pathExtension: String {
        get {
            return (self as NSString).pathExtension
        }
    }
    var stringByDeletingLastPathComponent: String {
        get {
            return (self as NSString).stringByDeletingLastPathComponent
        }
    }
    var stringByDeletingPathExtension: String {
        get {
            return (self as NSString).stringByDeletingPathExtension
        }
    }
    var pathComponents: [String] {
        get {
            return (self as NSString).pathComponents
        }
    }
    
    func stringByAppendingPathComponent(path: String) -> String {
        let nsString = self as NSString
        return nsString.stringByAppendingPathComponent(path)
    }
    
    func stringByAppendingPathExtension(ext: String) -> String? {
        let nsString = self as NSString
        return nsString.stringByAppendingPathExtension(ext)
    }
    
}
