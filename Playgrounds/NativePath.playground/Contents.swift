// Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let pi = CGFloat(M_PI)

struct RelativeLine {
    let end: CGPoint

    init(x: CGFloat, y: CGFloat) {
        end = CGPoint(x: x, y: y)
    }
}

func += (inout lhs: Path, rhs: RelativeLine) {
    lhs.addLine(rhs.end)
}

extension Path: Drawable {
    public func drawInContext(context: CGContextRef) {
        CGContextAddPath(context, cgPath)
        CGContextStrokePath(context)
    }
}

// #############################################################

let context = CGContextRef.bitmapContext(CGRect(x: -100, y: -100, w: 300, h: 300))

var path = Path()
path.move(CGPoint(x: 0, y:0))
path += RelativeLine(x: 100, y: 0)
path += RelativeLine(x: 100, y: 100)
path += RelativeLine(x: 0, y: 100)
path += RelativeLine(x: 0, y: 0)
context.draw(path)

context.nsimage
