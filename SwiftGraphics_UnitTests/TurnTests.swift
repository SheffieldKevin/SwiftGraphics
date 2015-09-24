//
//  TurnTests.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 9/17/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import XCTest
import SwiftGraphics

class TurnTests: XCTestCase {

    func testExample() {

        XCTAssertEqual(Turn(CGPoint(x: 0, y: 0), CGPoint(x: 100, y: 0), CGPoint(x: 100, y: 100))!, Turn.Left)

        XCTAssertEqual(Turn(CGPoint(x: 0, y: 0), CGPoint(x: 100, y: 0), CGPoint(x: 100, y: -100))!, Turn.Right)

        XCTAssertEqual(Turn(CGPoint(x: 0, y: 0), CGPoint(x: 100, y: 0), CGPoint(x: 200, y: 0))!, Turn.None)

        XCTAssertEqual(Turn(CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0), CGPoint(x: 0, y: 0))!, Turn.None)

    }


}
