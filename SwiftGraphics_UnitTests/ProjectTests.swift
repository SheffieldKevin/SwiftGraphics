//
//  ProjectTests.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 1/31/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import XCTest

class ProjectTests: XCTestCase {
    func testProjectConfiguration() {

#if !DEBUG && RELEASE
        XCTAssert(false, "Unit tests not running in correct build configuration.")
#else
        XCTAssert(true)
#endif
    }

}
