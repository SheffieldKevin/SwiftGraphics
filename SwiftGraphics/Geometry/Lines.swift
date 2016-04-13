//
//  Lines.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 1/24/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import CoreGraphics

// MARK: Line

public struct Line {
    let m: CGFloat
    let b: CGFloat

    // TODO: Vertical lines!?
    func lineSegment(x0  x0: CGFloat, x1: CGFloat) -> LineSegment {
        let start = CGPoint(x: x0, y: m * x0 + b)
        let end = CGPoint(x: x1, y: m * x1 + b)
        return LineSegment(start, end)
    }
}

// MARK: Line String

public struct LineString {
    public let points: [CGPoint]

    public init(points: [CGPoint]) {
        self.points = points
    }
}

public extension LineString {
    func toLineSegments() -> [LineSegment] {
        let pairs = slidingWindow(points, count: 2)
        return pairs.map() {
            return LineSegment($0[0], $0[1])
        }
    }
}

// MOve to SwiftUtilities.
private func slidingWindow <T> (items: Array <T>, count: Int) -> Array <Array <T>> {
    var output = Array <Array <T>> ()
    var temp = Array <T> ()
    for item in items {
        if temp.count == count {
            output.append(temp)
            temp.removeFirst()
        }
        temp.append(item)
    }
    if temp.isEmpty == false {
        output.append(temp)
    }
    return output
}


// MARK: Polygon

public struct Polygon {
    public let points: [CGPoint]

    public init(points: [CGPoint]) {
        assert(points.count >= 3)
        self.points = points
    }
}

public extension Polygon {
    func toLineSegments() -> [LineSegment] {
        let pairs = slidingWindow(points, count: 2)
        return pairs.map() {
            return LineSegment($0[0], $0[1])
        } + [LineSegment(points.first!, points.last!)]
    }
}
