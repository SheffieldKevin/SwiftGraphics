// Playground - noun: a place where people can play

import Cocoa
import CoreGraphics
import SwiftGraphics

let size = CGSize(w: 240, h: 240)
let context = CGContextRef.bitmapContext(size, color: CGColor.lightGrayColor())

CGContextTranslateCTM(context, 120, 120)

var rect = CGRect(center: CGPoint(x: 0, y: 0), size: CGSize(w: 20, h: 20))
var triangle = Triangle(rect: rect, rotation: degreesToRadians(180))


context.strokeLine(triangle.pointsArray, close: true)

context.nsimage
