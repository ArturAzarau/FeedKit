//
//  MediaCategory.swift
//
//  Copyright (c) 2017 Nuno Manuel Dias
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in all
//  copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE
//  SOFTWARE.
//

import Foundation

open class MediaCategory {
    
    /**
     
     The element's attributes
     
     */
    open class Attributes {
        
        /**
         
         The URI that identifies the categorization scheme. It is an optional attribute. 
         If this attribute is not included, the default scheme
         is "http://search.yahoo.com/mrss/category_schema".
         
         */
        open var scheme: String?
        
        /**
         
         The human readable label that can be displayed in end user applications. 
         It is an optional attribute.
         
         */
        open var label: String?
        
    }
    
    /**
     
     The element's attributes
     
     */
    open var attributes: Attributes?
    
    /**
     
     The element's value
     
     */
    open var value: String?
    
}

// MARK: - Initializers

extension MediaCategory {
    
    convenience init(attributes attributeDict: [String : String]) {
        self.init()
        self.attributes = MediaCategory.Attributes(attributes: attributeDict)
    }
    
}


extension MediaCategory.Attributes {
    
    convenience init?(attributes attributeDict: [String : String]) {
        
        if attributeDict.isEmpty {
            return nil
        }
        
        self.init()
        
        self.scheme = attributeDict["scheme"]
        self.label = attributeDict["label"]
        
    }
    
}
