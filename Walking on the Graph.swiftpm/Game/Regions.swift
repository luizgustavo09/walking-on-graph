//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import CoreGraphics

class Regions {
    var r1: RegionNode
    var r2: RegionNode
    var r3: RegionNode
    var r4: RegionNode
    
    init() {
        r1 = RegionNode(imageName: "region1", bridges: ["a", "b", "d", "e", "f"])
        r1.name = "1"
        r1.zPosition = 1
        
        r2 = RegionNode(imageName: "region2", bridges: ["a", "b", "c"])
        r2.name = "2"
        
        r3 = RegionNode(imageName: "region3", bridges: ["e", "f", "g"])
        r3.name = "3"
        
        r4 = RegionNode(imageName: "region4", bridges: ["d", "c", "g"])
        r4.name = "4"
    }
    func configureRegions(viewWidth: CGFloat, viewHeigth: CGFloat) {
        r1.background.size = CGSize(width: Auxiliary.eps(x: 838.43, w: viewWidth), height: Auxiliary.delta(y: 846.62, h: viewHeigth))
        r1.background.anchorPoint = Auxiliary.anchorPoint
        r1.background.position = CGPoint(x: Auxiliary.eps(x: 488.12, w: viewWidth), y: -Auxiliary.delta(y: 344.39, h: viewHeigth))
        
        r2.background.size = CGSize(width: Auxiliary.eps(x: 1664.48, w: viewWidth), height: Auxiliary.delta(y: 751.91, h: viewHeigth))
        r2.background.anchorPoint = Auxiliary.anchorPoint
        r2.background.position = CGPoint(x: Auxiliary.eps(x: 0, w: viewWidth), y: -Auxiliary.delta(y: 0, h: viewHeigth))
        
        r3.background.size = CGSize(width: Auxiliary.eps(x: 1555.27, w: viewWidth), height: Auxiliary.delta(y: 667.69, h: viewHeigth))
        r3.background.anchorPoint = Auxiliary.anchorPoint
        r3.background.position = CGPoint(x: Auxiliary.eps(x: 0, w: viewWidth), y: -Auxiliary.delta(y: 868.31, h: viewHeigth))
        
        r4.background.size = CGSize(width: Auxiliary.eps(x: 721.41, w: viewWidth), height: Auxiliary.delta(y: 1535.82, h: viewHeigth))
        r4.background.anchorPoint = Auxiliary.anchorPoint
        r4.background.position = CGPoint(x: Auxiliary.eps(x: 1326.59, w: viewWidth), y: -Auxiliary.delta(y: 0, h: viewHeigth))
    }
}
