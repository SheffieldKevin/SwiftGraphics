// Playground - noun: a place where people can play

import CoreGraphics
import SwiftUtilities
import SwiftGraphics
import SwiftGraphicsPlayground

import XCPlayground
import Cocoa

// Needs Xcode 7.3b2+
// If this doesn't work switch to the "SwiftGraphics_OSX_Playground" scheme and build it.

class SimpleLiveViewController: NSViewController {

    var slider: NSSlider!
    var imageView: NSImageView!

    override func loadView() {
        let stackView = NSStackView(frame: CGRect(x: 0, y: 0, width: 320, height: 240))
        stackView.orientation = .Vertical

        slider = NSSlider()
        slider.minValue = 0
        slider.maxValue = 1
        slider.action = Selector("sliderAction:")
        slider.target = self

        stackView.addArrangedSubview(slider)

        imageView = NSImageView()
        stackView.addArrangedSubview(imageView)

        view = stackView

        let image = test(CGFloat(slider.floatValue))
        imageView.image = image


        view.layout()
    }

    func sliderAction(sender: AnyObject) {
        let image = test(CGFloat(slider.floatValue))
        imageView.image = image
    }

}

func test(value: CGFloat) -> NSImage {
    let context = CGContextRef.bitmapContext(CGSize(w: 320, h: 320), origin: CGPoint(x: 0.5, y: 0.5))

    let styleElements: [StyleElement] = [
        .StrokeColor(CGColor.blackColor().withAlpha(0.5)),
    ]
    var style = Style(elements: styleElements)

    let start_color = HSV(h: (0.5 + value) % 1.0, s: 1.0, v: 0.5)
    let end_color = HSV(h: (1.0 + value)  % 1.0, s: 0.5, v: 1.0)

    let count: CGFloat = 20 * value
    let sides = Int(value * 7) + 3

    for n in CGFloat(0).stride(through: 1.0, by: 1 / count) {
        let p = RegularPolygon(nside: sides, center: CGPoint.zero, radius: lerp(160, 0, n), startAngle: n * 2)

        let color = lerp(start_color, end_color, n)

        style.fillColor = color.cgColor.withAlpha(0.1)
        context.draw(p, style: style)
    }

    let p = RegularPolygon(nside: 3, center: CGPoint.zero, radius: 160)
    p.circumcircle.drawInContext(context)
    return context.nsimage
}

let viewController = SimpleLiveViewController()

XCPlaygroundPage.currentPage.liveView = viewController.view
