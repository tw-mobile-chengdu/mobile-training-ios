//
//  ViewModelTests.swift
//  MiniWeiboTests
//
//  Created by Weicheng Wang on 2020/1/2.
//  Copyright © 2020 ThoughtWorks. All rights reserved.
//

import XCTest
import Quick
import Nimble

@testable import MiniWeibo

class ViewModelTests: QuickSpec {
    
    override func spec() {
        
        describe("ViewModel tests") {
            afterEach {
                
            }
            
            context("About the input and the output") {
                it("should have correct output for input") {
                    let viewModel = WeiboListViewModel(HttpRequest())
                    
                    // data source
                    expect(viewModel.dataSource).notTo(beNil())
                    expect(viewModel.dataSource).to(beAnInstanceOf([WeiboModel].self))
                    // output
                    viewModel.didUpdateWeibo = { data in
                        expect(data).toNot(beNil())
                        expect(data).to(beAnInstanceOf([WeiboModel].self))
                    }
                    
                    // input
                    viewModel.didSelecteWeibo = { model in
                        expect(model).toNot(beNil())
                        expect(model).to(beAnInstanceOf(WeiboModel.self))
                    }
                    // output
                    viewModel.didSelectRow(at: IndexPath(row: 0, section: 0))
                    
                    // input
                    viewModel.refreshData()
                }
            }
        }
    }
    
    override class func setUp() {
        
    }
    
    override class func tearDown() {
        
    }

}
