//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit

class RegionNode: SKNode {
    let background: SKSpriteNode
    init(imageName: String) {
        background = SKSpriteNode(imageNamed: imageName)
        super.init()
        addChild(background)
        background.isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
