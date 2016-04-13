//: Playground - noun: a place where people can play

import Cocoa
import CoreGraphics
import CoreImage

import SwiftGraphics

public extension NSImage {
    var CGImage: Cocoa.CGImage? {
        return CGImageForProposedRect(nil, context: nil, hints: nil)
    }
}

public extension CGImage {
    var size: CGSize {
        return CGSize(width: CGImageGetWidth(self), height: CGImageGetHeight(self))
    }
}

public extension CGImage {
    func toNSImage() -> NSImage {
        return NSImage(CGImage: self, size: self.size)
    }
}

public extension CGImage {
    func resized(size: CGSize, keepAspectRatio: Bool = false) -> CGImage {
        let rect: CGRect
        if keepAspectRatio == true {
            rect = scaleAndAlignRectToRect(source: self.size.toRect(), destination: size.toRect(), scaling: .proportionally, alignment: .center)
        }
        else {
            rect = size.toRect()
        }

        let context = CGContext.bitmapContext(size)
        context.with() {
            CGContextDrawImage(context, rect, self)
        }
        return context.image
    }
}

public extension CGImage {
    func cropped(rect: CGRect) -> CGImage {
        let context = CGContext.bitmapContext(rect.size)
        context.with() {
            CGContextDrawImage(context, rect, self)
        }
        return context.image
    }

    func cropped(size: CGSize, scaling: SwiftGraphics.Scaling = .none, alignment: SwiftGraphics.Alignment) -> CGImage {
        let rect = scaleAndAlignRectToRect(source: self.size.toRect(), destination: size.toRect(), scaling: scaling, alignment: alignment)
        let context = CGContext.bitmapContext(size)
        context.with() {
            CGContextDrawImage(context, rect, self)
        }
        return context.image
    }
}

public extension CGImage {
    func clipped(path: CGPath) -> CGImage {
        let context = CGContext.bitmapContext(size)
        context.with() {
            CGContextAddPath(context, path)
            CGContextClip(context)
            CGContextDrawImage(context, CGRect(size: size), self)
        }
        return context.image
    }

    func clipped(pathable: CGPathable) -> CGImage {
        return clipped(pathable.cgpath)
    }
}

extension CGImage: Drawable {
    public func drawInContext(context: CGContextRef) {
        CGContextDrawImage(context, size.toRect(), self)
    }
}

extension CGImage {
    func composite(other: CGImage, blendMode: CGBlendMode? = nil, alpha: CGFloat = 1.0) -> CGImage {
        let context = CGContext.bitmapContext(size)
        context.with() {
            context.draw(self)
            if let blendMode = blendMode {
                context.blendMode = blendMode
            }
            context.alpha = alpha
            context.draw(other)
        }
        return context.image
    }
}

extension CGImage {
    static func with(size: CGSize, contextDraw: CGContext -> Void) -> CGImage {
        let context = CGContext.bitmapContext(size)
        context.with() {
            contextDraw(context)
        }
        return context.image
    }
    func with(size: CGSize? = nil, contextDraw: CGContext -> Void) -> CGImage {
        let size = size ?? self.size
        let context = CGContext.bitmapContext(size)
        context.with() {
            drawInContext(context)
            contextDraw(context)
        }
        return context.image
    }
}

func composite(imageables: [Imageable], size: CGSize, blendMode: CGBlendMode? = nil, alpha: CGFloat = 1.0) -> CGImage {

    let images = imageables.map() { return $0.toCGImage(size) }

    guard let firstImage = images.first else {
        preconditionFailure()
    }


    let context = CGContext.bitmapContext(size)
    context.with() {
        context.draw(firstImage)
        if let blendMode = blendMode {
            context.blendMode = blendMode
        }
        context.alpha = alpha
        for image in images[1...(images.count - 1)] {
            if image === firstImage {
                continue
            }
            context.draw(image)
        }
    }
    return context.image
}

protocol Imageable {
    func toCGImage() -> CGImage
    func toCGImage(size: CGSize) -> CGImage
}

extension Imageable {
    func toCIImage() -> CIImage {
        let cgImage = toCGImage()
        let ciImage = CIImage(CGImage: cgImage)
        return ciImage
    }
    func toCIImage(size: CGSize) -> CIImage {
        let cgImage = toCGImage(size)
        let ciImage = CIImage(CGImage: cgImage)
        return ciImage
    }
}

extension CGColor: Imageable {
    func toCGImage() -> CGImage {
        return toCGImage(CGSize(w: 1, h: 1))
    }
    func toCGImage(size: CGSize = CGSize(width: 1, height: 1)) -> CGImage {
        let context = CGContext.bitmapContext(size)
        context.with() {
            context.fillColor = self
            CGContextFillRect(context, size.toRect())
        }
        return context.image
    }
}

extension CGImage: Imageable {
    func toCGImage() -> CGImage {
        return self
    }
    func toCGImage(size: CGSize) -> CGImage {
        assert(size == self.size)
        return self
    }
}

extension CIImage: Imageable {
    func toCGImage() -> CGImage {
        let c = CIContext()
        return c.createCGImage(self, fromRect: self.extent)
    }
    func toCGImage(size: CGSize) -> CGImage {
        let c = CIContext()
        return c.createCGImage(self, fromRect: self.extent)
    }
}


extension Circle {
    func circleWithRadius(radius: CGFloat) -> Circle {
        return Circle(center: center, radius: radius)
    }

    func inset(delta: CGFloat) -> Circle {
        return circleWithRadius(radius + delta)
    }
}

var image = NSImage(named: "albert-einstein-tongue")!.CGImage!

image = image.cropped(CGSize(w: image.size.min, h: image.size.min), alignment: .center)

image = image.resized(CGSize(w: 800, h: 800), keepAspectRatio: true)

image = composite([image, CGColor.greenColor()], size: image.size, blendMode: .Normal, alpha: 0.15)

let r = image.size.min * 0.5
let circle = Circle(center: CGPoint(x: r, y: r), radius: r - 10)
image = image.clipped(circle.inset(-20))

image = image.with() {
    $0.lineWidth = 20
    $0.strokeColor = CGColor.greenColor().withAlpha(0.75)
    circle.drawInContext($0)
}

let circleImage = circle.toCGImage(circle.frame.insetBy(dx: -10, dy: -10).size, style: nil)
circleImage.toNSImage()


let f1 = Crystallize(inputImage: image.toCIImage())
image = f1.outputImage!.toCGImage()
image.toNSImage()
