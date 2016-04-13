//
//  QuadrantTests.swift
//  SwiftGraphics
//
//  Created by Dzianis Lebedzeu on 1/17/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import XCTest
import SwiftGraphics


class QuadrantTests: XCTestCase {

    let p1 = CGPoint(x: -1, y: -1)
    let p2 = CGPoint(x: -1, y: 1)
    let p3 = CGPoint(x: 1, y: -1)
    let p4 = CGPoint(x: 1, y: 1)

    func testCGRectFromQuadrant() {
        let rect = CGRect(x: 0, y: 0, width: 20, height: 20)

        XCTAssertEqual(rect.quadrant(.MinXMinY), CGRect(x: 0, y: 0, width: 10, height: 10))
        XCTAssertEqual(rect.quadrant(.MaxXMinY), CGRect(x: 10, y: 0, width: 10, height: 10))
        XCTAssertEqual(rect.quadrant(.MinXMaxY), CGRect(x: 0, y: 10, width: 10, height: 10))
        XCTAssertEqual(rect.quadrant(.MaxXMaxY), CGRect(x: 10, y: 10, width: 10, height: 10))
    }

    func testQuadrantFromPoint() {
        XCTAssertEqual(Quadrant.MinXMinY, Quadrant.fromPoint(p1))
        XCTAssertEqual(Quadrant.MinXMaxY, Quadrant.fromPoint(p2))
        XCTAssertEqual(Quadrant.MaxXMinY, Quadrant.fromPoint(p3))
        XCTAssertEqual(Quadrant.MaxXMaxY, Quadrant.fromPoint(p4))
    }

    func testQuadrantFromPointWithOrigin() {
        XCTAssertEqual(Quadrant.MaxXMinY, Quadrant.fromPoint(p1, origin: p2))
        XCTAssertEqual(Quadrant.MinXMaxY, Quadrant.fromPoint(p2, origin: p3))
        XCTAssertEqual(Quadrant.MaxXMinY, Quadrant.fromPoint(p3, origin: p4))
        XCTAssertEqual(Quadrant.MaxXMaxY, Quadrant.fromPoint(p4, origin: p1))
    }

    func testQuadrantFromPointWithRect() {
        // TODO: add tests
    }

    func testQuadrantToPoint() {
        XCTAssertEqual(p1, Quadrant.MinXMinY.toPoint())
        XCTAssertEqual(p2, Quadrant.MinXMaxY.toPoint())
        XCTAssertEqual(p3, Quadrant.MaxXMinY.toPoint())
        XCTAssertEqual(p4, Quadrant.MaxXMaxY.toPoint())
    }

}
