//
//  Auxiliary.swift
//  Walking on the Graph
//
//  Created by Luiz Gustavo Silva Aguiar on 24/04/22.
//
import CoreGraphics

class Auxiliary {
    static let anchorPoint = CGPoint(x: 0, y: 1)
    static let bridgeAnchorPoint = CGPoint(x: 0, y: 0)
    static func eps(x: CGFloat, w: CGFloat) -> CGFloat {
        return w * (x/2048)
    }
    
    static func delta(y: CGFloat, h: CGFloat) -> CGFloat {
        return h * (y/1536)
    }
}
