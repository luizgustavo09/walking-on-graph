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
        r1 = RegionNode(imageName: "region1")
        r2 = RegionNode(imageName: "region2")
        r3 = RegionNode(imageName: "region3")
        r4 = RegionNode(imageName: "region4")
    }
    func configureRegions(viewWidth: CGFloat, viewHeigth: CGFloat) {
        r1.background.size = CGSize(width: viewHeigth * 0.5, height: viewHeigth * 0.5)
        r1.background.position = CGPoint(x: viewWidth * 0.45, y: viewHeigth * 0.5)
        
        r2.background.size = CGSize(width: viewWidth * 0.81, height: viewHeigth * 0.49)
        r2.background.position = CGPoint(x: r2.background.size.width * 0.5, y: viewHeigth - r2.background.size.height * 0.5)
        
        r3.background.size = CGSize(width: viewWidth * 0.76, height: viewHeigth * 0.434)
        r3.background.position = CGPoint(x: r3.background.size.width/2 , y: r3.background.size.height * 0.5)
        
        r4.background.size = CGSize(width: viewWidth * 0.352, height: viewHeigth)
        r4.background.position = CGPoint(x: viewWidth - r4.background.size.width/2, y: viewHeigth * 0.5)
    }
}
