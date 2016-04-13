//
//  Quadrant.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 8/24/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics

// MARK: Quadrants

public enum Quadrant {
    case MinXMinY
    case MaxXMinY
    case MinXMaxY
    case MaxXMaxY
}

public extension Quadrant {
    static func fromPoint(point: CGPoint) -> Quadrant {
        if point.y >= 0 {
            if point.x >= 0 {
                return .MaxXMaxY
            }
            else {
                return .MinXMaxY
            }
        }
        else {
            if point.x >= 0 {
                return .MaxXMinY
            }
            else {
                return .MinXMinY
            }
        }
    }

    func toPoint() -> CGPoint {
        switch self {
            case .MinXMinY:
                return CGPoint(x: -1, y: -1)
            case .MaxXMinY:
                return CGPoint(x: 1, y: -1)
            case .MinXMaxY:
                return CGPoint(x: -1, y: 1)
            case .MaxXMaxY:
                return CGPoint(x: 1, y: 1)
        }
    }

    static func fromPoint(point: CGPoint, origin: CGPoint) -> Quadrant {
        return Quadrant.fromPoint(point - origin)
    }

    static func fromPoint(point: CGPoint, rect: CGRect) -> Quadrant? {
        // TODO:  can be ouside
        return Quadrant.fromPoint(point - rect.mid)
    }

    // TODO: Deprecate
    func quadrantRectOfRect(rect: CGRect) -> CGRect {
        return rect.quadrant(self)
    }
}

public extension CGRect {
    func quadrant(quadrant: Quadrant) -> CGRect {
        let size = CGSize(width: self.size.width * 0.5, height: self.size.height * 0.5)
        switch quadrant {
        case .MinXMinY:
            return CGRect(origin: CGPoint(x: minX, y: minY), size: size)
        case .MaxXMinY:
            return CGRect(origin: CGPoint(x: midX, y: minY), size: size)
        case .MinXMaxY:
            return CGRect(origin: CGPoint(x: minX, y: midY), size: size)
        case .MaxXMaxY:
            return CGRect(origin: CGPoint(x: midX, y: midY), size: size)
        }
    }
}
