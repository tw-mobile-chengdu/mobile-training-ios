//
//  MiniWeiboTests.swift
//  MiniWeiboTests
//
//  Created by Weicheng Wang on 2019/12/18.
//  Copyright © 2019 ThoughtWorks. All rights reserved.
//

import XCTest
@testable import MiniWeibo

class MiniWeiboTests: XCTestCase {

    override func setUp() {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    
    
    
    func testOneNameValuePair() {
        let qs = try! HttpRequest("name=value")
        XCTAssertEqual(1, qs?.count)
        let qs1 = try! HttpRequest("")
        XCTAssertEqual(0, qs1?.count)
        
        let qs2 = try! HttpRequest("name=value")
        XCTAssertEqual(1, qs2?.count)
        XCTAssertEqual("value", try qs2?.valueFor("name"));
    }
    
    func testNull() {
        
        do {
            let _ = try HttpRequest(nil)
            XCTFail("Should throw exception")
        } catch {
            
        }
    }

    func testMultipleNameValuePairs() {
        
        let qs = try! HttpRequest("name1=value1&name2=value2&name3=value3");
        do {
            XCTAssertEqual(3, qs?.count);
            XCTAssertEqual("value1", try qs?.valueFor("name1"));
            XCTAssertEqual("value2", try qs?.valueFor("name2"));
            XCTAssertEqual("value3", try qs?.valueFor("name3"));
        }
        
    }
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
