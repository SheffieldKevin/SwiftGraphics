//
//  Scaling.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 8/24/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics

// MARK: Scaling and alignment.

public enum Scaling {
    case None
    case Proportionally
    case ToFit
}

public enum Alignment {
    case Center
    case Top
    case TopLeft
    case TopRight
    case Left
    case Bottom
    case BottomLeft
    case BottomRight
    case Right
}

public func scaleAndAlignRectToRect(source source: CGRect, destination: CGRect, scaling: Scaling, alignment: Alignment) -> CGRect {
    var result = CGRect()
    var theScaledImageSize = source.size

    switch scaling {
        case .ToFit:
            return destination

        case .Proportionally:
            var theScaleFactor: CGFloat = 1
            if destination.size.width / source.size.width < destination.size.height / source.size.height {
                theScaleFactor = destination.size.width / source.size.width
            }
            else {
                theScaleFactor = destination.size.height / source.size.height
            }
            theScaledImageSize.width *= theScaleFactor
            theScaledImageSize.height *= theScaleFactor

            result.size = theScaledImageSize
        case .None:
            result.size.width = theScaledImageSize.width
            result.size.height = theScaledImageSize.height
    }

    switch alignment {
        case .Center:
            result.origin.x = destination.origin.x + (destination.size.width - theScaledImageSize.width) / 2
            result.origin.y = destination.origin.y + (destination.size.height - theScaledImageSize.height) / 2
        case .Top:
            result.origin.x = destination.origin.x + (destination.size.width - theScaledImageSize.width) / 2
            result.origin.y = destination.origin.y + destination.size.height - theScaledImageSize.height
        case .TopLeft:
            result.origin.x = destination.origin.x
            result.origin.y = destination.origin.y + destination.size.height - theScaledImageSize.height
        case .TopRight:
            result.origin.x = destination.origin.x + destination.size.width - theScaledImageSize.width
            result.origin.y = destination.origin.y + destination.size.height - theScaledImageSize.height
        case .Left:
            result.origin.x = destination.origin.x
            result.origin.y = destination.origin.y + (destination.size.height - theScaledImageSize.height) / 2
        case .Bottom:
            result.origin.x = destination.origin.x + (destination.size.width - theScaledImageSize.width) / 2
            result.origin.y = destination.origin.y
        case .BottomLeft:
            result.origin.x = destination.origin.x
            result.origin.y = destination.origin.y
        case .BottomRight:
            result.origin.x = destination.origin.x + destination.size.width - theScaledImageSize.width
            result.origin.y = destination.origin.y
        case .Right:
            result.origin.x = destination.origin.x + destination.size.width - theScaledImageSize.width
            result.origin.y = destination.origin.y + (destination.size.height - theScaledImageSize.height) / 2
    }

    return result
}
