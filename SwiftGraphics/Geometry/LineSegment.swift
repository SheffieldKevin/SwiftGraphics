//
//  LineSegment.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 3/25/16.
//  Copyright © 2016 schwa.io. All rights reserved.
//

public struct LineSegment {
    // TODO: Convert to tuple
    public let start: CGPoint
    public let end: CGPoint

    public init(_ start: CGPoint, _ end: CGPoint) {
        self.start = start
        self.end = end
    }
}

// MARK: -

extension LineSegment: Equatable {
}

public func == (lhs: LineSegment, rhs: LineSegment) -> Bool {
    return lhs.start == rhs.start && lhs.end == rhs.end
}

// MARK: -

extension LineSegment: Hashable {
    public var hashValue: Int {
        return start.hashValue ^ end.hashValue
    }
}

// MARK: -

public extension LineSegment {

    var slope: CGFloat? {
        if end.x == start.x {
            return nil
        }
        return (end.y - start.y) / (end.x - start.x)
    }

    var angle: CGFloat {
        return atan2(end - start)
    }

    func isParallel(other: LineSegment) -> Bool {
        return slope == other.slope
    }

    func containsPoint(point: CGPoint) -> Bool {
        if start.x != end.x {    // self is not vertical
            if start.x <= point.x && point.x <= end.x {
                return true
            }
            else if start.x >= point.x && point.x >= end.x {
                return true
            }
        }
        else {    // self is vertical, so test y coordinate
            if start.y <= point.y && point.y <= end.y {
                return true
            }
            else if start.y >= point.y && point.y >= end.y {
                return true
            }
        }
        return false
    }

    var midpoint: CGPoint {
        return (start + end) * 0.5
    }

    func rotated(angle: CGFloat) -> LineSegment {
        let transform = CGAffineTransform(rotation: angle)
        return LineSegment(CGPointApplyAffineTransform(start, transform), CGPointApplyAffineTransform(end, transform))
    }

    public func intersection(other: LineSegment) -> CGPoint? {
        if case .Intersect(let intersection) = advancedIntersection(other) {
            return intersection
        }
        else {
            return nil
        }
    }

    public enum LineSegmentIntersection {
        case None
        case Disjoint
        case Intersect(CGPoint)
        case Overlap(LineSegment)
    }


    public func advancedIntersection(other: LineSegment) -> LineSegmentIntersection {

        let SMALL_NUM = CGFloat(0.00000001)

        let S1 = self
        let S2 = other

        let u = S1.end - S1.start
        let v = S2.end - S2.start
        let w = S1.start - S2.start
        let D = perp(u,v)

        // test if they are parallel (includes either being a point)
        if fabs(D) < SMALL_NUM {           // S1 and S2 are parallel
            if perp(u, w) != 0 || perp(v, w) != 0 {
                return .None                    // they are NOT collinear
            }
            // they are collinear or degenerate
            // check if they are degenerate points
            let du = dot(u, u)
            let dv = dot(v, v)
            if du==0 && dv==0 {            // both segments are points
                if S1.start != S2.start {         // they are distinct  points
                    return .Disjoint
                }
                return .Intersect(S1.start)
            }
            if du == 0 {                     // S1 is a single point
                if S2.containsPoint(S1.start) == false { // but is not in S2
                    return .None
                }
                return .Intersect(S1.start)
            }
            if dv == 0 {                     // S2 a single point
                if S1.containsPoint(S2.start) == false { // but is not in S1
                    return .None
                }
            return .Intersect(S2.start)
            }
            // they are collinear segments - get overlap (or not)

            // endpoints of S1 in eqn for S2
            var t0: CGFloat, t1: CGFloat

            let w2 = S1.end - S2.start
            if v.x != 0 {
                t0 = w.x / v.x
                t1 = w2.x / v.x
            }
            else {
                t0 = w.y / v.y
                t1 = w2.y / v.y
            }
            if t0 > t1 {                   // must have t0 smaller than t1
                swap(&t0, &t1)
            }
            // NO overlap
            if t0 > 1 || t1 < 0 {
                return .None
            }
            t0 = t0 < 0 ? 0 : t0               // clip to min 0
            t1 = t1 > 1 ? 1 : t1               // clip to max 1
            if t0 == t1 {                  // intersect is a point
                return .Intersect(S2.start +  t0 * v)
            }

            // they overlap in a valid subsegment
            return .Overlap(LineSegment(S2.start + t0 * v, S2.start + t1 * v))
        }

        // the segments are skew and may intersect in a point
        // get the intersect parameter for S1
        let sI = perp(v, w) / D
        if sI < 0 || sI > 1 {               // no intersect with S1
            return .None
        }

        // get the intersect parameter for S2
        let tI = perp(u, w) / D
        if tI < 0 || tI > 1 {               // no intersect with S2
            return .None
        }

        return .Intersect(S1.start + sI * u)
    }
}

