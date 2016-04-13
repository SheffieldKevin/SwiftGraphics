//
//  Lines+Drawing.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 1/24/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import CoreGraphics

extension Line: Geometry {

    public var frame: CGRect {
        return CGRect.infinite
    }

    public func drawInContext(context: CGContextRef) {
        // TODO: Hack
        let segment = lineSegment(x0: -100000.0, x1: 100000.0)
        segment.drawInContext(context)
    }
}

// MARK: -

extension LineSegment: Geometry, Drawable {
    public var frame: CGRect {
        return CGRect(points: (start, end))
    }

    public func drawInContext(context: CGContextRef) {
        context.strokeLine(start, end)
    }
}

// MARK: -

extension LineString: Geometry, Drawable {
    public var frame: CGRect {
        return CGRect.unionOfPoints(points)
    }

    public func drawInContext(context: CGContextRef) {
        context.strokeLine(points, closed: false)
    }
}

// MARK: -

extension Polygon: Geometry, Drawable {
    public var frame: CGRect {
        return CGRect.unionOfPoints(points)
    }

    public func drawInContext(context: CGContextRef) {
        context.strokeLine(points, closed: true)
    }
}
