//
//  RegularPolygonTests.swift
//  SwiftGraphics
//
//  Created by Zhang Yungui on on 15/1/23.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import XCTest
import SwiftGraphics

class RegularPolygonTests: XCTestCase {

    func testWithTriangle() {
        let p = RegularPolygon(nside: 3, center: CGPoint.zero, vertex: CGPoint(x: 0, y: 100))
        let pts = p.points
        let t = Triangle(points: pts)
        let tolerance = CGFloat(FLT_EPSILON)
        let half = CGFloat(50*sqrt(3.0))
        
//        XCTAssert(t.isEquilateral)
        XCTAssertEqual(pts.count, 3)
        XCTAssertEqual(p.startAngle, CGFloat(M_PI_2))
        XCTAssertEqual(p.centralAngle, CGFloat(2*M_PI/3))
        XCTAssertEqual(p.interiorAngle, CGFloat(M_PI/3))
        XCTAssertEqual(p.radius, CGFloat(100))
        XCTAssertEqualWithAccuracy(p.inradius, CGFloat(50), accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.sideLength, 2*half, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.area, CGFloat(150*half), accuracy: tolerance)
        
        XCTAssertEqualWithAccuracy(pts[0].x, CGFloat(0), accuracy: tolerance)
        XCTAssertEqualWithAccuracy(pts[0].y, CGFloat(100), accuracy: tolerance)
        XCTAssertEqualWithAccuracy(pts[1].x, -half, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(pts[1].y, CGFloat(-50), accuracy: tolerance)
        XCTAssertEqualWithAccuracy(pts[2].x, half, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(pts[2].y, CGFloat(-50), accuracy: tolerance)
        
        XCTAssertEqualWithAccuracy(p.center.x, t.circumcenter.x, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.center.y, t.circumcenter.y, accuracy: tolerance)
        
        XCTAssertEqualWithAccuracy(p.area, t.area, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.circumcircle.radius, t.circumcircle.radius, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.inradius, t.inradius, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.center.x, t.incenter.x, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.center.y, t.incenter.y, accuracy: tolerance)
        XCTAssertEqualWithAccuracy(p.length, {let s=t.lengths; return s.0+s.1+s.2}(), accuracy: tolerance)
    }

}
