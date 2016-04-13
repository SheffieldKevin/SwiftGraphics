//: Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

let context = CGContextRef.bitmapContext(CGSize(w: 1000, h: 1000))

extension NSImage {
    var cgImage: CGImage {
        return CGImageForProposedRect(nil, context: nil, hints: nil)!
    }
}

var callbacks = CGPatternCallbacks()
callbacks.drawPattern = {
    (info: UnsafeMutablePointer<Void>, context: CGContext?) -> Void in

    let cgImage: CGImage = UnsafeMutablePointer <CGImage> (info).memory
    let rect = CGRect(x: 0, y: 0, width: CGFloat(CGImageGetWidth(cgImage)), height: CGFloat(CGImageGetHeight(cgImage)))
    CGContextDrawImage(context, rect, cgImage)
}

var image = NSImage(named: "Stripes")!.cgImage

let size = image.size

let pattern = CGPatternCreate(&image, CGRect(origin: CGPoint.zero, size: size), CGAffineTransformIdentity, size.width, size.height, .ConstantSpacing, true, &callbacks)!

let patternSpace = CGColorSpaceCreatePattern(nil)
CGContextSetFillColorSpace(context, patternSpace)

let components: [CGFloat] = [ 1 ]
CGContextSetFillPattern(context, pattern, components)

let path = CGPathCreateWithRect(CGRect(w: 1000, h: 1000), nil)

CGContextAddPath(context, path)

CGContextDrawPath(context, .Fill)



context.nsimage
