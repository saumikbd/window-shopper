//
//  Window_ShopperTests.swift
//  Window ShopperTests
//
//  Created by Sadman Sakib Saumik on 11/17/17.
//  Copyright © 2017 Sadman Sakib Saumik. All rights reserved.
//

import XCTest

class Window_ShopperTests: XCTestCase {
    
    override func setUp() {
        super.setUp()
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }
    
    override func tearDown() {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
        super.tearDown()
    }
    
    func testExample() {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }
    func testWage(){
        let wage = Wage()
        XCTAssert(wage.getHours(forWage: 50, andPrice: 201)==5)
        XCTAssert(wage.getHours(forWage: 50, andPrice: 199)==4)
        XCTAssert(wage.getHours(forWage: 31, andPrice: 248)==8)
    }
    
    func testPerformanceExample() {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }
    
}
