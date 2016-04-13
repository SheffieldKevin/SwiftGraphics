//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let context = CGContextRef.bitmapContext(CGRect(x: -100, y: -100, w: 200, h: 200))

var points: [CGPoint] = []

func P1(magnitude: CGFloat, direction: CGFloat) -> (CGFloat, CGFloat) {
    return (abs(magnitude - 50), direction / 100 * 360)
}



for N in 0..<100 {

    let (magnitude, direction) = P1(CGFloat(N), direction: CGFloat(N))
    let (magnitude2, direction2) = P1(magnitude, direction: direction)
    let point = CGPoint(magnitude: magnitude2, direction: degreesToRadians(direction2))
    points.append(point)
}

let lineString = LineString(points: points)
context.draw(lineString)

context.nsimage
