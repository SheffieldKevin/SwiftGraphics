// Playground - noun: a place where people can play

import CoreGraphics

import SwiftGraphics
import SwiftGraphicsPlayground

// Yup.
typealias Style = SwiftGraphicsPlayground.Style

let context = CGContextRef.bitmapContext(CGSize(w: 512, h: 512))

let center = CGPoint(x: 256, y: 256)
let radius: CGFloat = 200

let circle_styles: [StyleElement] = [
    .fillColor(CGColor.redColor().withAlpha(0.2)),
]
let bezier_styles: [StyleElement] = [
    .strokeColor(CGColor.redColor()),
    .lineWidth(4),
    .lineDash([10,10]),
]
let marker_styles: [StyleElement] = [
    .strokeColor(CGColor.blueColor()),
    .lineWidth(1.5)
]

// Draw a circle.
context.with(Style(elements: circle_styles)) {
    context.fillCircle(center: center, radius: radius)
}


// Now draw four beziers on top of the circle

// From: http: //www.faqs.org/faqs/graphics/algorithms-faq/ section 4.04
let d = radius * 4.0 * (sqrt(2.0) - 1.0) / 3.0

let quadrants = [
    CGSize(w: -1.0, h: -1.0), CGSize(w: 1.0, h: -1.0), CGSize(w: -1.0, h: 1.0), CGSize(w: 1.0, h: 1.0),
]

// Create a cubic bezier curve for the each quadrant of the circle...
// Note this does not draw the curves either clockwise or anti-clockwise - and not suitable for use in a bezier path.
var curves = quadrants.map() {
    (quadrant: CGSize) -> BezierCurve in
    return BezierCurve(
        start: center + CGPoint(x: radius) * quadrant, control1: center + (CGPoint(x: radius) + CGPoint(y: d)) * quadrant, control2: center + (CGPoint(y: radius) + CGPoint(x: d)) * quadrant, end: center + CGPoint(y: radius) * quadrant
    )
}

curves[0].start = center + CGPoint(x: radius) * quadrants[0]

context.draw(curves, style: Style(elements: bezier_styles)) { return $0 as Drawable }
//context.draw(curves as [Drawable])

// Get all the points from all the beziers
let points = curves.reduce([], combine: {
    (u: [CGPoint], curve: BezierCurve) -> [CGPoint] in
    return u + curve.points
})
let markers: [Drawable] = points.map() {
    let marker = Saltire(frame: CGRect(center: $0, radius: 10))
    return marker as Drawable
}
context.draw(markers, style: Style(elements: marker_styles))

context.nsimage
