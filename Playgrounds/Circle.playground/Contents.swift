//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let a = CGPoint(x: 100, y: 100)
let b = CGPoint(x: 200, y: 100)
let c = CGPoint(x: 150, y: 150)

let circle = try Circle(points: (a, b, c))

let points = [a, b, c, circle.center]

let context = CGContextRef.bitmapContext(CGRect(x: 0, y: 0, w: 300, h: 300))

context.draw(circle)

for (index, point) in points.enumerate() {
    context.strokeCross(CGRect(center: point, radius: 5))
    context.drawLabel("\(index)", point: point + CGPoint(x: 2, y: 0), size: 10)
}




context.nsimage
