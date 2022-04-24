//
//  File.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//
import CoreGraphics

class Bridges {
    var a: BridgeNode
    var b: BridgeNode
    var c: BridgeNode
    var d: BridgeNode
    var e: BridgeNode
    var f: BridgeNode
    var g: BridgeNode
    
    init() {
        a = BridgeNode(imageName: "edgeAO", regions: ["r1", "r2"])
        a.name = "a"
        
        b = BridgeNode(imageName: "edgeBO", regions: ["r1", "r2"])
        b.name = "b"
        
        c = BridgeNode(imageName: "edgeCO", regions: ["r2", "r4"])
        c.name = "c"
        
        d = BridgeNode(imageName: "edgeDO", regions: ["r1", "r4"])
        d.name = "d"
        
        e = BridgeNode(imageName: "edgeEO", regions: ["r1", "r3"])
        e.name = "e"
        
        f = BridgeNode(imageName: "edgeFO", regions: ["r1", "r3"])
        f.name = "f"
        
        g = BridgeNode(imageName: "edgeGO", regions: ["r3", "r4"])
        g.name = "g"
    }
    
    func configureBridges(viewWidth: CGFloat, viewHeigth: CGFloat) {
        a.background.size = CGSize(width: Auxiliary.eps(x: 304.33, w: viewWidth), height: Auxiliary.delta(y: 360.59, h: viewHeigth))
        a.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        a.background.position = CGPoint(x: Auxiliary.eps(x: 372, w: viewWidth), y: -Auxiliary.delta(y: 648.33, h: viewHeigth))
        
        b.background.size = CGSize(width: Auxiliary.eps(x: 122, w: viewWidth), height: Auxiliary.delta(y: 324, h: viewHeigth))
        b.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        b.background.position = CGPoint(x: Auxiliary.eps(x: 844, w: viewWidth), y: -Auxiliary.delta(y: 440.18, h: viewHeigth))
        
        c.background.size = CGSize(width: Auxiliary.eps(x: 343.56, w: viewWidth), height: Auxiliary.delta(y: 317.72, h: viewHeigth))
        c.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        c.background.position = CGPoint(x: Auxiliary.eps(x: 1270, w: viewWidth), y: -Auxiliary.delta(y: 391.56, h: viewHeigth))
        
        d.background.size = CGSize(width: Auxiliary.eps(x: 424.62, w: viewWidth), height: Auxiliary.delta(y: 214.11, h: viewHeigth))
        d.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        d.background.position = CGPoint(x: Auxiliary.eps(x: 1190, w: viewWidth), y: -Auxiliary.delta(y: 909.11, h: viewHeigth))
        
        e.background.size = CGSize(width: Auxiliary.eps(x: 369.69, w: viewWidth), height: Auxiliary.delta(y: 395.45, h: viewHeigth))
        e.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        e.background.position = CGPoint(x: Auxiliary.eps(x: 306, w: viewWidth), y: -Auxiliary.delta(y: 1264.69, h: viewHeigth))
        
        f.background.size = CGSize(width: Auxiliary.eps(x: 270.21, w: viewWidth), height: Auxiliary.delta(y: 407, h: viewHeigth))
        f.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        f.background.position = CGPoint(x: Auxiliary.eps(x: 643, w: viewWidth), y: -Auxiliary.delta(y: 1468, h: viewHeigth))
        
        g.background.size = CGSize(width: Auxiliary.eps(x: 331.04, w: viewWidth), height: Auxiliary.delta(y: 368.17, h: viewHeigth))
        g.background.anchorPoint = Auxiliary.bridgeAnchorPoint
        g.background.position = CGPoint(x: Auxiliary.eps(x: 1263, w: viewWidth), y: -Auxiliary.delta(y: 1508.17, h: viewHeigth))
        
        
        
    }
}
