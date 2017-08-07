//
//  CalculatorTests.swift
//  myUnitTest
//
//  Created by CdxN on 2017/8/7.
//  Copyright © 2017年 CdxN. All rights reserved.
//

import XCTest

@testable import myUnitTest

class CalculatorTests: XCTestCase {
    
    var calculator: Calculator?

    override func setUp() {

        super.setUp()

        calculator = Calculator()

    }
    
    override func tearDown() {
        calculator = nil
        
        super.tearDown()
    }
    
    // 跑Test之前會跑Setup
    func testAdd() {

        XCTAssertEqual(
            calculator!.add(3, 5),
            8
        )

        XCTAssertEqual(calculator?.add(10, 17), 27)

    }
    // 跑Test之後會跑TearDown

    func testMultiple() {
        
        XCTAssertEqual(
            calculator!.multiple(3, 5),
            15
        )
        
        XCTAssertEqual(
            calculator!.multiple(4,6),
            24
        )
    }
}
