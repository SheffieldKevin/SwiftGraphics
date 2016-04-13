//
//  UtilitesTests.swift
//  SwiftGraphics
//
//  Created by Dzianis Lebedzeu on 1/17/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import XCTest
import SwiftGraphics
import SwiftUtilities

class UtilitesTests: XCTestCase {

    func testPower() {
        XCTAssertEqual(2.0 ** 2.0, 4.0)
        XCTAssertEqual(CGFloat(2) ** CGFloat(2), CGFloat(4))
    }

    func testClamp() {
        XCTAssert(clamp(2, lower: 0, upper: 10) == 2)
        XCTAssert(clamp(12, lower: 0, upper: 10) == 10)
        XCTAssert(clamp(-1, lower: 0, upper: 10) == 0)
    }

    func testLerpFloat() {
        XCTAssert(lerp(Double(1.0), Double(2.0), Double(2.0)) == Double(3.0))
    }

    func testLerpPoint() {
        let result = lerp(CGPoint(x: 1, y: 1), CGPoint(x: 2, y: 2), 2)
        XCTAssertEqual(result, CGPoint(x: 3, y: 3))
    }

    func testLerpSize() {
        let result = lerp(CGSize(width: 1, height: 1), CGSize(width: 2, height: 2), 2)
        XCTAssertEqual(result, CGSize(width: 3, height: 3))
    }

    func testLerpRect() {
        let result = lerp(CGRect(x: 1, y: 1, width: 1, height: 1), CGRect(x: 1, y: 1, width: 2, height: 2), 2)
        XCTAssertEqual(result, CGRect(x: 1, y: 1, width: 3, height: 3))
    }

    func testdegreesToRadians() {
        let rad30 = 0.52359877559829882
        XCTAssert(degreesToRadians(30.0) == rad30)
        XCTAssert(degreesToRadians(CGFloat(30)) == CGFloat(rad30))
    }

//    func testradiansToDegrees() {
//        let rad30 = 0.52359877559829882
//        XCTAssert(radiansToDegrees(rad30) ==% 30)
//        XCTAssert(radiansToDegrees(CGFloat(rad30)) ==% CGFloat(30))
//    }

}
