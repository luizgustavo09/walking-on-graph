//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit

class GameScene: SKScene {
    let regions = Regions()
    let bridges = Bridges()
    override func didMove(to view: SKView) {
        self.backgroundColor = UIColor.river
        self.anchorPoint = Auxiliary.anchorPoint
        regions.configureRegions(viewWidth: self.size.width, viewHeigth: self.size.height)
        bridges.configureBridges(viewWidth: self.size.width, viewHeigth: self.size.height)
        addChild(regions.r1)
        addChild(regions.r2)
        addChild(regions.r3)
        addChild(regions.r4)
        addChild(bridges.a)
        addChild(bridges.b)
        addChild(bridges.c)
        addChild(bridges.d)
        addChild(bridges.e)
        addChild(bridges.f)
        addChild(bridges.g)
    }
    override func update(_ currentTime: TimeInterval) {
        
    }
}
