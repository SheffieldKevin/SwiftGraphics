//
//  BitmapContexts.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 1/12/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import CoreGraphics

#if os(OSX)
import AppKit
#endif

public extension CGContext {

    class func bitmapContext(bounds:CGRect, color:CGColor = CGColor.clearColor()) -> CGContext! {

        let colorspace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.PremultipliedFirst.rawValue)
        let context = CGBitmapContextCreate(nil, Int(bounds.size.width), Int(bounds.size.height), 8, Int(bounds.size.width) * 4, colorspace, bitmapInfo.rawValue)!

        CGContextTranslateCTM(context, -bounds.origin.x, -bounds.origin.y)

        context.with {
            context.setFillColor(color)
            context.fillRect(bounds)
        }

        return context
    }


    class func bitmapContext(size:CGSize, origin:CGPoint = CGPointZero, color:CGColor = CGColor.clearColor()) -> CGContext! {

        let colorspace = CGColorSpaceCreateDeviceRGB()
        let bitmapInfo = CGBitmapInfo(rawValue: CGImageAlphaInfo.PremultipliedFirst.rawValue)
        let context = CGBitmapContextCreate(nil, Int(size.width), Int(size.height), 8, Int(size.width) * 4, colorspace, bitmapInfo.rawValue)!

        context.with {
            context.setFillColor(color)
            context.fillRect(CGRect(size:size))
        }
        CGContextTranslateCTM(context, origin.x * size.width, origin.y * size.height)

        return context
    }

    var size: CGSize {
        return CGSize(w:CGFloat(CGBitmapContextGetWidth(self)), h:CGFloat(CGBitmapContextGetHeight(self)))
    }
}

public extension CGImageRef {
    var size: CGSize {
        return CGSize(width:CGFloat(CGImageGetWidth(self)), height:CGFloat(CGImageGetHeight(self)))
    }
}

public extension CGContext {
    class func imageWithBlock(size:CGSize, color:CGColor = CGColor.clearColor(), origin:CGPoint = CGPointZero, block:CGContext -> Void) -> CGImage! {
        let context = bitmapContext(size, color: color, origin: origin)
        block(context)
        let cgimage = CGBitmapContextCreateImage(context)
        return cgimage
    }
}


public extension CGContext {

    var image: CGImage! {
        return CGBitmapContextCreateImage(self)
    }

#if os(OSX)
    var nsimage: NSImage {
        // This assumes the context is a bitmap context
        let cgimage = CGBitmapContextCreateImage(self)!
        let size = CGSize(width:CGFloat(CGImageGetWidth(cgimage)), height:CGFloat(CGImageGetHeight(cgimage)))
        let nsimage = NSImage(CGImage:cgimage, size:size)
        return nsimage
    }
#endif
}


#if os(OSX)
public func validParametersForBitmapContext(colorSpace colorSpace:CGColorSpaceRef, bitsPerPixel:Int, bitsPerComponent:Int, alphaInfo:CGImageAlphaInfo, bitmapInfo:CGBitmapInfo) -> Bool {

    // TODO: Do the right thing on OSX and iOS

    // https://developer.apple.com/library/ios/documentation/GraphicsImaging/Conceptual/drawingwithquartz2d/dq_context/dq_context.html#//apple_ref/doc/uid/TP30001066-CH203-TPXREF101

    let model = CGColorSpaceGetModel(colorSpace)

    let bitmapInfo = CGBitmapInfo(rawValue: bitmapInfo.rawValue & CGBitmapInfo.FloatComponents.rawValue)

    let tuple = (model.rawValue, bitsPerPixel, bitsPerComponent, alphaInfo, bitmapInfo)

    switch tuple {
        // TODO: kCGColorSpaceModelUnknown????? = -alpha only?
        case (CGColorSpaceModel.Unknown.rawValue, 8, 8, .Only, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.Monochrome.rawValue, 8, 8, .None, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.Monochrome.rawValue, 8, 8, .Only, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.Monochrome.rawValue, 16, 16, .None, CGBitmapInfo()): // Mac OS X
            return true
        case (CGColorSpaceModel.Monochrome.rawValue, 32, 32, .None, CGBitmapInfo.FloatComponents): // Mac OS X
            return true
        case (CGColorSpaceModel.RGB.rawValue, 16, 5, .NoneSkipFirst, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.RGB.rawValue, 32, 8, .NoneSkipFirst, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.RGB.rawValue, 32, 8, .NoneSkipLast, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.RGB.rawValue, 32, 8, .PremultipliedFirst, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.RGB.rawValue, 32, 8, .PremultipliedLast, CGBitmapInfo()): // Mac OS X, iOS
            return true
        case (CGColorSpaceModel.RGB.rawValue, 64, 16, .PremultipliedLast, CGBitmapInfo()): // Mac OS X
            return true
        case (CGColorSpaceModel.RGB.rawValue, 64, 16, .NoneSkipLast, CGBitmapInfo()): // Mac OS X
            return true
        case (CGColorSpaceModel.RGB.rawValue, 128, 32, .NoneSkipLast, CGBitmapInfo.FloatComponents): // Mac OS X
            return true
        case (CGColorSpaceModel.RGB.rawValue, 128, 32, .PremultipliedLast, CGBitmapInfo.FloatComponents): // Mac OS X
            return true
        case (CGColorSpaceModel.CMYK.rawValue, 32, 8, .None, CGBitmapInfo()): // Mac OS X
            return true
        case (CGColorSpaceModel.CMYK.rawValue, 64, 16, .None, CGBitmapInfo()): // Mac OS X
            return true
        case (CGColorSpaceModel.CMYK.rawValue, 128, 32, .None, CGBitmapInfo.FloatComponents): // Mac OS X
            return true
        default:
            return false
    }
}
#endif
