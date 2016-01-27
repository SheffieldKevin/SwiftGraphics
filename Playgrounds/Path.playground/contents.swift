// Playground - noun: a place where people can play

import CoreGraphics
import SwiftUtilities
import SwiftGraphics
import SwiftGraphicsPlayground

let context = CGContextRef.bitmapContext(CGSize(w: 201, h: 201))

var path = CGPathCreateMutable()

path.move(CGPoint(x: 5, y: 5))
path.addLine(CGPoint(x: 100, y: 0), relative: true)
path.addLine(CGPoint(x: 0, y: 100), relative: true)
path.addLine(CGPoint(x: -100, y: 0), relative: true)
path.addCubicCurveToPoint(CGPoint(x: 100, y: 100), control1: CGPoint(x: 50, y: 0), control2: CGPoint(x: 150, y: 0))
path.close()

path.dump()

//CGContextAddPath(context, path)
path.enumerate() {
    (type: CGPathElementType, points: [CGPoint]) -> Void in
    switch type {
        case .MoveToPoint:
            CGContextMoveToPoint(context, points[0].x, points[0].y)
        case .AddLineToPoint:
            CGContextAddLineToPoint(context, points[1].x, points[1].y)
        case .AddCurveToPoint:
            CGContextAddCurveToPoint(context, points[1].x, points[1].y, points[2].x, points[2].y, points[3].x, points[3].y)
        case .CloseSubpath:
            CGContextClosePath(context)
        default:
            print("default")
    }
}

CGContextStrokePath(context)

context.nsimage
