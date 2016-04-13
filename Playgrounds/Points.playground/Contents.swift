//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

public extension NSGraphicsContext {
    static func with(context: CGContextRef, flipped: Bool, block: Void -> Void) {
        let savedContext = NSGraphicsContext.currentContext()
        let newContext = NSGraphicsContext(CGContext: context, flipped: flipped)
        NSGraphicsContext.setCurrentContext(newContext)
        block()
        NSGraphicsContext.setCurrentContext(savedContext)
    }
}

public extension CGContext {
    func drawLabel(string: String, point: CGPoint, size: CGFloat) {
        NSGraphicsContext.with(self, flipped: false) {
            let attributes = [NSFontAttributeName: NSFont.labelFontOfSize(size)]
            let nsString = (string as NSString)
            nsString.drawAtPoint(point, withAttributes: attributes)
        }
    }
}

let context = CGContextRef.bitmapContext(CGSize(w: 480, h: 320), origin: CGPoint(x: 0.0, y: 0.0))
context.style

let rng = SwiftUtilities.random

var points = random.arrayOfRandomPoints(50, range: CGRect(w: 480, h: 320).insetBy(dx: 50, dy: 50))
points.count

context.strokeColor = NSColor.blueColor().colorWithAlphaComponent(0.2).CGColor
for (index, point) in points.enumerate() {
    context.strokeCross(CGRect(center: point, radius: 5))
}

context.strokeColor = CGColor.blueColor()

let hull = monotoneChain(points, sorted: false)
context.strokeLine(hull, closed: true)

context.strokeColor = CGColor.blackColor()
for (index, point) in hull.enumerate() {
    context.drawLabel("\(index)", point: point, size: 9)
}


/**
 Tests if a point is Left|On|Right of an infinite line.

 - parameter line:  Two points on an infinite line
 - parameter point: Point to test

 - returns: > 0 if point on left of the line
            = 0 if point on the line
            < 0 if point on right of the line
 */
func turn(line line: (CGPoint, CGPoint), point: CGPoint) -> CGFloat {
    return (line.1.x - line.0.x) * (point.y - line.0.y) - (point.x - line.0.x) * (line.1.y - line.0.y)
}
//====================

/**
 From: http://geomalgorithms.com/a03-_inclusion.html

 - parameter point:   Vertices on a closed, clockwise winding polygon
 - parameter polygon: Array of points

 - returns: True if point inside points of polygon
 */
func pointInPolygon(point: CGPoint, polygon: [CGPoint]) -> Bool {
    // The winding number counter
    var wn = 0

    // Loop through all edges of the polygon
    // edge from V[i] to V[i+1]
    for var i=0; i != polygon.count - 1; i++ {
        // start y <= P.y
        if polygon[i].y <= point.y {
            // an upward crossing
            if polygon[i+1].y  > point.y {
                // P left of  edge
                if turn(line: (polygon[i], polygon[i+1]), point: point) > 0 {
                    // have a valid up intersect
                    ++wn
                }
            }
        }
        else {
            // start y > P.y (no test needed)
            // a downward crossing
            if polygon[i+1].y <= point.y {
                // P right of  edge
                if turn(line: (polygon[i], polygon[i+1]), point: point) < 0 {
                    // have a valid down intersect
                    wn -= 1
                }
            }
        }
    }
    return wn != 0
}



let reversed = Array(hull.reverse())
let closed = reversed + [reversed[0]]


for N in 0..<100 {
    let point = random.random(range: CGRect(w: 480, h: 320))
    context.strokeColor = pointInPolygon(point, polygon: closed) ? CGColor.greenColor() : CGColor.redColor()
    context.strokeCross(CGRect(center: point, radius: 5))
}
context.nsimage
