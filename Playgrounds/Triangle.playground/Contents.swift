// Playground - noun: a place where people can play

// Order of imports is very important
import CoreGraphics
import SwiftUtilities
import SwiftRandom
import SwiftGraphics
import SwiftGraphicsPlayground

func dump(t: Triangle) -> String {
    var s = ""
    s += "Points: \(t.vertex)\n"
    s += "Lengths: \(t.lengths)\n"
    s += "Angles: \(radiansToDegrees(t.angles.0), radiansToDegrees(t.angles.1), radiansToDegrees(t.angles.2))\n"
    s += "isIsosceles: \(t.isIsosceles)\n"
    s += "isEquilateral: \(t.isEquilateral)\n"
    s += "isScalene: \(t.isScalene)\n"
    s += "isRightAngled: \(t.isRightAngled)\n"
    s += "isOblique: \(t.isOblique)\n"
    s += "isAcute: \(t.isAcute)\n"
    s += "isObtuse: \(t.isObtuse)\n"
    s += "isDegenerate: \(t.isDegenerate)\n"
    s += "signedArea: \(t.signedArea)\n"
    return s
}

func pt(x: CGFloat, _ y: CGFloat) -> CGPoint {
    return CGPoint(x: x, y: y)
}

let context = CGContextRef.bitmapContext(CGSize(w: 480, h: 320), origin: CGPoint(x: 0.5, y: 0.5))

let t1 = Triangle(pt(100,0), pt(200,0), pt(100,150))


CGContextTranslateCTM(context, -t1.circumcenter.x, -t1.circumcenter.y)

context.draw(t1)
let styles = stylesForMarkup(t1.markup)
context.draw(t1.markup, styles: styles)

context.nsimage
