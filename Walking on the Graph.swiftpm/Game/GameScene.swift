//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit

class GameScene: SKScene {
    let regions = Regions()
    override func didMove(to view: SKView) {
        self.anchorPoint = CGPoint(x: 0, y: 0)
        self.backgroundColor = UIColor.river
        regions.configureRegions(viewWidth: self.size.width, viewHeigth: self.size.height)
        addChild(regions.r1)
        addChild(regions.r2)
        addChild(regions.r3)
        addChild(regions.r4)
    }
    override func update(_ currentTime: TimeInterval) {
        
    }
}
