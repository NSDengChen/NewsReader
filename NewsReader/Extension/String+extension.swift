//
//  String+extension.swift
//  NewsReader
//
//  Created by dengchen on 15/12/30.
//  Copyright © 2015年 name. All rights reserved.
//

import UIKit

public extension String {
    
    
    var floatValue:Float {
        get {
            return NSString(string: self).floatValue
        }
    }
    
    public func path(Directory:NSSearchPathDirectory)->String {
       return NSSearchPathForDirectoriesInDomains(Directory, NSSearchPathDomainMask.UserDomainMask,true).first! + "/\(self)"
    }
    
    
   public func parseURLQueryString() ->[String:AnyObject]{
        
        var dict = [String:AnyObject]()
        
        let pairs = self.componentsSeparatedByString("&")
        
        for pair in pairs {
            let keyValue = pair.componentsSeparatedByString("=")
            
            if keyValue.count == 2 {
                let key = keyValue[0]
                let value:String = keyValue[1].stringByRemovingPercentEncoding!
                
                if key.characters.count > 0 && value.characters.count > 0 {
                    dict[key] = value
                }
            }
        }
        
        return dict
    }
    
    
    
  
    
}