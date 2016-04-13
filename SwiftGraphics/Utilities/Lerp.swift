//
//  Lerp.swift
//  SwiftGraphics
//
//  Created by Jonathan Wight on 1/23/15.
//  Copyright (c) 2015 schwa.io. All rights reserved.
//

import CoreGraphics

public protocol Subtractable {
    func - (lhs: Self, rhs: Self) -> Self
}

public protocol Lerpable {
    associatedtype FactorType

    func + (lhs: Self, rhs: Self) -> Self
    func * (lhs: Self, rhs: FactorType) -> Self
}

public func lerp <T: Lerpable, U: Subtractable where U: FloatLiteralConvertible, U == T.FactorType> (lower: T, _ upper: T, _ factor: U) -> T {
    return lower * (1.0 - factor) + upper * factor
}

extension Double: Lerpable, Subtractable {
    public typealias FactorType = Double
}

extension CGFloat: Lerpable, Subtractable {
    public typealias FactorType = CGFloat
}

extension CGPoint: Lerpable {
    public typealias FactorType = CGFloat
}

extension CGSize: Lerpable {
    public typealias FactorType = CGFloat
}

public func lerp(lower: CGRect, _ upper: CGRect, _ factor: CGFloat) -> CGRect {
    return CGRect(
        origin: lerp(lower.origin, upper.origin, factor),
        size: lerp(lower.size, upper.size, factor)
        )
}
