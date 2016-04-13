// Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let size = CGSize(w: 240, h: 240)
let context = CGContextRef.bitmapContext(size)

CGContextTranslateCTM(context, 20, 20)

let curves = [
    BezierCurve(
        start: CGPoint(x: 10, y: 0), control1: CGPoint(x: -10, y: 180), control2: CGPoint(x: 150, y: 200), end: CGPoint(x: 200, y: 0)),
    ]

let styles = [
    "control":Style(elements: [
        .StrokeColor(CGColor.redColor()),
    ]),
    "start":Style(elements: [
        .StrokeColor(CGColor.redColor()),
    ]),
    "end":Style(elements: [
        .StrokeColor(CGColor.redColor()),
    ]),
    "controlLine":Style(elements: [
        .StrokeColor(CGColor.blueColor()),
        .LineDash([5,5]),
    ]),
    "boundingBox":Style(elements: [
        .StrokeColor(CGColor.blueColor()),
        .LineDash([5,5]),
    ]),
    "simpleBounds":Style(elements: [
        .StrokeColor(CGColor.blueColor()),
        .LineDash([5,5]),
    ]),
]

for curve in curves {
    let markup = curve.markup
    context.draw(markup, styles: styles)
    context.stroke(curve)
}

context.nsimage
