// Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

// TODO: Move
extension NSImage {
    func writeToURL(url: NSURL) throws {
        guard let path = url.path else {
            throw Error.Generic("Could not get path of \(url).")
        }
        assert((path as NSString).pathExtension == "tiff")
        guard let representation = TIFFRepresentation else {
            throw Error.Generic("Could not get TIFF representation of image.")
        }
        if representation.writeToFile(path, atomically: true) == false {
            throw Error.Generic("Failed to save image.")
        }
    }
}


extension Arc: CustomDebugDrawable {
    public func debugDraw(context: CGContext) {
        let curves = toBezierCurves()
        for curve in curves {
            context.debugDraw(curve)
        }
    }
}

extension Arc {
    init(start: CGPoint, end: CGPoint, out: CGPoint) throws {
        let circle = try Circle(points: (start, end, out))

        let theta = angle(circle.center, start, end)
        let phi = angle(circle.center, circle.center + CGPoint(x: circle.radius, y: 0), start)
        self = Arc(center: circle.center, radius: circle.radius, theta: theta, phi: phi)
    }

    init(start: CGPoint, end: CGPoint, midpointDistance: CGFloat) throws {
        let midpoint = (start + end) * 0.5
        let angle = start.angleTo(end) + degreesToRadians(90)
        let out = midpoint.polarPoint(angle, radius: midpointDistance)
        print(out)
        self = try Arc(start: start, end: end, out: out)
    }
}

// #############################################################

let context = CGContextRef.bitmapContext(CGRect(x: -400, y: -400, w: 800, h: 800))

let center = CGPoint.zero
let radius = CGFloat(300)

context.strokeColor = CGColor.lightGrayColor().withAlpha(0.5)
context.draw(Circle(center: center, radius: radius))

let arc = Arc(center: center, radius: radius, theta: degreesToRadians(180), phi: degreesToRadians(0))
context.strokeColor = CGColor.redColor()
context.draw(arc)

let curves = arc.toBezierCurves(8)
let start = curves.first?.points.first
let end = curves.last?.points.last

let arc2 = try! Arc(start: start!, end: end!, midpointDistance: radius * 0.75)
context.strokeColor = CGColor.blueColor()
context.draw(arc2)

context.nsimage
