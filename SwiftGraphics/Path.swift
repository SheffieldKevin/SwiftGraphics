//
//  Path.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 8/27/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics

public enum PathElement {
    case Move(CGPoint)
    case AddLine(CGPoint)
    case AddCurve(BezierCurve)
    case Close
}


public struct Path {

    public var elements: [PathElement] = []

    public var currentPoint: CGPoint = CGPoint.zero

    public init() {
    }

    public mutating func move(point: CGPoint) -> Path {
        currentPoint = point
        elements.append(.Move(point))
        return self
    }

    public mutating func addLine(point: CGPoint) -> Path {
        currentPoint = point
        elements.append(.AddLine(point))
        return self
    }

    public mutating func addCurve(curve: BezierCurve) -> Path {
        currentPoint = curve.end
        elements.append(.AddCurve(curve))
        return self
    }

    public mutating func close() -> Path {
        elements.append(.Close)
        return self
    }
}

public extension Path {
    init(vertices: [CGPoint], closed: Bool = false) {
        self.init()

        move(vertices[0])
        for vertex in vertices[1..<vertices.count] {
            addLine(vertex)
        }
        if closed {
            close()
        }
    }
}


public extension Path {
    var cgPath: CGPath {
        let CGPath = CGPathCreateMutable()

        for element in elements {
            switch element {
                case .Move(let point):
                    CGPathMoveToPoint(CGPath, nil, point.x, point.y)
                case .AddLine(let point):
                    CGPathAddLineToPoint(CGPath, nil, point.x, point.y)
                case .AddCurve(let curve):
                    switch curve.order {
                        case .Cubic:
                            CGPathAddCurveToPoint(CGPath, nil,
                                curve.controls[0].x, curve.controls[0].y,
                                curve.controls[1].x, curve.controls[1].y,
                                curve.end.x, curve.end.y
                            )
                        case .Quadratic:
                            CGPathAddQuadCurveToPoint(CGPath, nil,
                                curve.controls[0].x, curve.controls[0].y,
                                curve.end.x, curve.end.y
                            )
                        default:
                            assertionFailure("Unsupport bezier curve order.")
                            break
                    }
                case .Close():
                    CGPathCloseSubpath(CGPath)
            }
        }

        return CGPath
    }
}
