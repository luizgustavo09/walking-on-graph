//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit

class RegionNode: SKNode {
    let background: SKSpriteNode
    var state: State
    var bridges: [String] = []
    init(imageName: String, bridges: [String]) {
        background = SKSpriteNode(imageNamed: imageName)
        self.bridges = bridges
        state = .white
        super.init()
        addChild(background)
        background.isUserInteractionEnabled = false
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

extension RegionNode {
    enum State: Int {
        //If I'm not here
        case white = 0
        
        //If I'm here
        case black = 1
    }
}
