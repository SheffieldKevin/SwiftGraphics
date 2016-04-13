//
//  DebugDrawable.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 12/25/15.
//  Copyright © 2015 schwa.io. All rights reserved.
//

public protocol CustomDebugDrawable {
    func debugDraw(context: CGContext)
}

public extension CGContext {
    func debugDraw(drawable: CustomDebugDrawable) {
        self.with() {
            drawable.debugDraw(self)
        }
    }
}

extension BezierCurve: CustomDebugDrawable {
    public func debugDraw(context: CGContext) {

        context.strokeColor = CGColor.blueColor()
        for point in points {
            context.strokeCross(CGRect(center: point, radius: 5))
        }

        context.strokeColor = CGColor.redColor()
        let string = LineString(points: points)
        context.draw(string)

        let string2 = LineString(points: string.toLineSegments().map {
            return $0.midpoint
        })
        context.strokeColor = CGColor.greenColor()
        context.draw(string2)

        let string3 = LineString(points: string2.toLineSegments().map {
            return $0.midpoint
        })
        context.strokeColor = CGColor.blueColor()
        context.draw(string3)

        context.strokeColor = CGColor.blackColor()
        context.stroke(self)
    }
}
