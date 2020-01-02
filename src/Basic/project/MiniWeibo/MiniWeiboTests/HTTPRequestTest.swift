//
//  HTTPRequestTest.swift
//  MiniWeiboTests
//
//  Created by Weicheng Wang on 2019/12/30.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import XCTest
@testable import MiniWeibo

class HTTPRequestTest: XCTestCase {
    
    override class func setUp() {
        
    }
    
    override func tearDown() {
        
    }
    
    func testQueryString() {
        
        let paramters = ["key": "value", "key2": "value2"]

        XCTAssertEqual("key=value&key2=value2", paramters.);
    }
    
    func testRequest(with path :String) {
        
    }

}
