//
//  CGSize.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 8/24/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics

// MARK: CGSize

public extension CGSize {

    init(w:CGFloat, h:CGFloat) {
        (width, height) = (w, h)
    }

    init(width:CGFloat) {
        self.width = width
        self.height = 0
    }

    init(height:CGFloat) {
        self.width = 0
        self.height = height
    }
}

public func + (lhs:CGSize, rhs:CGSize) -> CGSize {
    return CGSize(width:lhs.width + rhs.width, height:lhs.height + rhs.height)
}

public func - (lhs:CGSize, rhs:CGSize) -> CGSize {
    return CGSize(width:lhs.width - rhs.width, height:lhs.height - rhs.height)
}

public func * (lhs:CGSize, rhs:CGFloat) -> CGSize {
    return CGSize(width:lhs.width * rhs, height:lhs.height * rhs)
}

public func * (lhs:CGFloat, rhs:CGSize) -> CGSize {
    return CGSize(width:lhs * rhs.width, height:lhs * rhs.height)
}

public func / (lhs:CGSize, rhs:CGFloat) -> CGSize {
    return CGSize(width:lhs.width / rhs, height:lhs.height / rhs)
}

public func += (inout lhs:CGSize, rhs:CGSize) {
    lhs = lhs + rhs
}

public func -= (inout lhs:CGSize, rhs:CGSize) {
    lhs = lhs - rhs
}

public func *= (inout lhs:CGSize, rhs:CGFloat) {
    lhs = lhs * rhs
}

public func /= (inout lhs:CGSize, rhs:CGFloat) {
    lhs = lhs / rhs
}


public extension CGSize {
    init(point:CGPoint) {
        width = point.x
        height = point.y
    }

    var area:CGFloat {
        return abs(width) * abs(height)
    }

    var signedArea:CGFloat {
        return width * height
    }
}


// TODO: Move elsewhere? Rename AreaOrientation?
public enum Orientation {
    case Square
    case Landscape
    case Portrait
}

public extension CGSize {
    var aspectRatio: CGFloat {
        return width / height
    }

    var orientation: Orientation {
        if abs(width) > abs(height) {
            return .Landscape
        }
        else if abs(width) == abs(height) {
            return .Square
        }
        else {
            return .Portrait
        }
    }

    func toRect() -> CGRect {
        return CGRect(size: self)
    }
}


public extension CGSize {
    init(_ v:(CGFloat, CGFloat)) {
        (width, height) = v
    }

    func toTuple() -> (CGFloat, CGFloat) {
        return (width, height)
    }
}

public extension CGSize {
    var min:CGFloat {
        return Swift.min(width, height)
    }
    var max:CGFloat {
        return Swift.max(width, height)
    }
}
