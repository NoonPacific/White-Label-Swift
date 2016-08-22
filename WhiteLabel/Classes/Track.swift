//
//  Track.swift
//
//  Created by Alex Givens http://alexgivens.com on 1/13/16
//  Copyright © 2016 Noon Pacific LLC http://noonpacific.com
//
//  Permission is hereby granted, free of charge, to any person obtaining a copy
//  of this software and associated documentation files (the "Software"), to deal
//  in the Software without restriction, including without limitation the rights
//  to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
//  copies of the Software, and to permit persons to whom the Software is
//  furnished to do so, subject to the following conditions:
//
//  The above copyright notice and this permission notice shall be included in
//  all copies or substantial portions of the Software.
//
//  THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
//  IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
//  FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
//  AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
//  LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
//  OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
//  THE SOFTWARE.
//


import Alamofire

public class Track {
    
    public var id : NSNumber!
    public var title : String!
    public var artist : String!
    public var slug : String!
    public var streamable : NSNumber!
    public var duration : NSNumber!
    public var externalID : NSNumber!
    public var streamURL : String!
    public var permalinkURL : String!
    public var artworkURL : String!
    public var purchaseURL : String!
    public var downloadURL : String!
    public var ticketURL : String!
    public var playCount : NSNumber!
    public var order : NSNumber!
    
    init?(response: NSHTTPURLResponse, representation: AnyObject) {
        id = representation.valueForKeyPath("id") as! NSNumber
        title = representation.valueForKeyPath("title") as! String
        artist = representation.valueForKeyPath("artist") as! String
    }
    
}

extension Track: WhiteLabelType {
    
    public static var ListURLString: String {
        return Constant.baseURLString + "/tracks/"
    }
}

extension Track: URLStringConvertible {
    
    public var URLString: String {
        return Constant.baseURLString + "/tracks/\(id)/"
    }
}