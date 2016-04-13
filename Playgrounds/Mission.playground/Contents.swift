//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let context = CGContextRef.bitmapContext(CGSize(w: 480, h: 320), origin: CGPoint(x: 0.0, y: 0.0))
let rng = SwiftRandom.random
let points = random.arrayOfRandomPoints(50, range: CGRect(x: 10, y: 10, w: 460, h: 300))
let hull = Polygon(points: monotoneChain(points, sorted: false))
context.draw(hull)

context.strokeColor = CGColor.redColor()

for y in CGFloat(0.0).stride(through: 320, by: 40) {

    let line = LineSegment(CGPoint(x: 0, y: y), CGPoint(x: 480, y: y))


    for segment in hull.toLineSegments() {
        if let intersection = segment.intersection(line) {
            context.draw(line)
            context.strokeSaltire(CGRect(center: intersection, radius: 10))
        }
    }
}

context.nsimage
