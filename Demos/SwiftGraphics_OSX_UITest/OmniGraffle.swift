//
//  OmniGraffle.swift
//  Sketch
//
//  Created by Jonathan Wight on 8/31/14.
//  Copyright (c) 2014 schwa.io. All rights reserved.
//

import CoreGraphics
import Foundation
import SwiftUtilities

class OmniGraffleDocumentModel {
    let path: String
    var frame: CGRect!
    var rootNode: OmniGraffleGroup!
    var nodesByID: [Int: OmniGraffleNode] = [:]

    init(path: String) throws {
        self.path = path
        try self.load()
    }
}

@objc class OmniGraffleNode: Node {
    weak var parent: Node?
    var dictionary: NSDictionary!
    var ID: Int { return dictionary["ID"] as! Int }

    init() {
    }
}

@objc class OmniGraffleGroup: OmniGraffleNode, GroupNode {
    var children: [Node] = []

    init(children: [Node]) {
        self.children = children
    }
}

@objc class OmniGraffleShape: OmniGraffleNode {
    var shape: String? { return dictionary["Shape"] as? String }
    var bounds: CGRect { return try! StringToRect(dictionary["Bounds"] as! String) }
    lazy var lines: [OmniGraffleLine] = []
}

@objc class OmniGraffleLine: OmniGraffleNode {
    var start: CGPoint {
        let strings = dictionary["Points"] as! [String]
        return try! StringToPoint(strings[0])
    }
    var end: CGPoint {
        let strings = dictionary["Points"] as! [String]
        return try! StringToPoint(strings[1])
    }
    var head: OmniGraffleNode?
    var tail: OmniGraffleNode?
}

extension OmniGraffleDocumentModel {

    func load() throws {
        let data = NSData(contentsOfCompressedFile: path)
        // TODO: Swift 2
        if let d = try NSPropertyListSerialization.propertyListWithData(data, options: NSPropertyListReadOptions(), format: nil) as? NSDictionary {
            _processRoot(d)
            let origin = try! StringToPoint(d["CanvasOrigin"] as! String)
            let size = try! StringToSize(d["CanvasSize"] as! String)
            frame = CGRect(origin: origin, size: size)
//            print(nodesByID)

            let nodes = nodesByID.values.filter {
                (node: Node) -> Bool in
                return node is OmniGraffleLine
            }
            for node in nodes {
                let line = node as! OmniGraffleLine
                var headID: Int?
                var tailID: Int?
                if let headDictionary = line.dictionary["Head"] as? NSDictionary {
                    headID = headDictionary["ID"] as? Int
                }
                if let tailDictionary = line.dictionary["Tail"] as? NSDictionary {
                    tailID = tailDictionary["ID"] as? Int
                }
                if headID != nil && tailID != nil {
                    let head = nodesByID[headID!] as! OmniGraffleShape
                    line.head = head
                    head.lines.append(line)

                    let tail = nodesByID[headID!] as! OmniGraffleShape
                    line.tail = tail
                    tail.lines.append(line)
                }
            }
        }
    }

    func _processRoot(d: NSDictionary) {
        let graphicslist = d["GraphicsList"] as! [NSDictionary]
        var children: [Node] = []
        for graphic in graphicslist {
            if let node = _processDictionary(graphic) {
                children.append(node)
            }
        }
        let group = OmniGraffleGroup(children: children)
        rootNode = group
    }

    func _processDictionary(d: NSDictionary) -> OmniGraffleNode! {
        if let className = d["Class"] as? String {
            switch className {
                case "Group":
                    var children: [Node] = []
                    if let graphics = d["Graphics"] as? [NSDictionary] {
                        children = graphics.map {
                            (d: NSDictionary) -> OmniGraffleNode in
                            return self._processDictionary(d)
                        }
                    }
                    let group = OmniGraffleGroup(children: children)
                    group.dictionary = d
                    nodesByID[group.ID] = group
                    return group
                case "ShapedGraphic":
                    let shape = OmniGraffleShape()
                    shape.dictionary = d
                    nodesByID[shape.ID] = shape
                    return shape
                case "LineGraphic":
                    let line = OmniGraffleLine()
                    line.dictionary = d
                    nodesByID[line.ID] = line
                    return line
                default:
                    print("Unknown: \(className)")
            }
        }
        return nil
    }
}
