//
//  GrahamScanUnitTests.swift
//  SwiftGraphics
//
//  Created by Dzianis Lebedzeu on 1/17/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import XCTest
import SwiftGraphics

class GrahamScanUnitTests: XCTestCase {

    override func setUp() {
        super.setUp()
    }

    func testGrahamScan() {
        let points = [
            CGPoint(x: 100, y: 100),
            CGPoint(x: 10, y: 300),
            CGPoint(x: 30, y: 30),
            CGPoint(x: 200, y: 100),
            CGPoint(x: 150, y: 40)
        ]

        let hull = grahamScan(points)
        XCTAssertEqual(hull, [CGPoint(x: 30, y: 30), CGPoint(x: 10, y: 300), CGPoint(x: 200, y: 100), CGPoint(x: 150, y: 40)])
    }
}
