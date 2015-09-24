//
//  Sketch.swift
//  Sketch
//
//  Created by Jonathan Wight on 8/31/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics

import SwiftGraphics

@objc public protocol Shape {
    var frame : CGRect { get }
}

@objc public protocol Node : class {
    weak var parent : Node? { get set }
}

@objc public protocol GroupNode : Node {
    var children : [Node] { get set }
}

@objc public protocol GeometryNode : Node {
    var frame : CGRect { get }
}

@objc public protocol Named {
    var name : String? { get }
}

@objc public class GroupGeometryNode : GroupNode, GeometryNode {
    public var parent : Node?
    public var children : [Node] = []
    public var name : String?
    public var frame : CGRect {
        let geometryChildren = children as! [GeometryNode]
        
        let rects = geometryChildren.map {
            (child: GeometryNode) -> CGRect in
            return child.frame
        }

        return CGRect.unionOfRects(rects)
    }

    public init() {
    }
}

@objc public class CircleNode : Shape, Node, GeometryNode {
    public var frame : CGRect { return CGRect(center: center, radius: radius) }

    public var center : CGPoint
    public var radius : CGFloat
    public var parent : Node?
    
    public init(center: CGPoint, radius: CGFloat) {
        self.center = center
        self.radius = radius
    }
}

@objc public class LineSegmentNode : Shape, Node, GeometryNode {
    public var frame : CGRect { return CGRect(p1: start, p2: end) }

    public var start : CGPoint
    public var end : CGPoint
    public var parent : Node?
    
    public init(start: CGPoint, end: CGPoint) {
        self.start = start
        self.end = end
    }
}

@objc public class RectangleNode : Shape, Node, GeometryNode {
    public var frame : CGRect

    public var parent : Node?
    
    public init(frame: CGRect) {
        self.frame = frame
    }
}

