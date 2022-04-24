//
//  BridgeNode.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SpriteKit



class BridgeNode: SKNode {
    let background: SKSpriteNode
    var regions: [String] = []
    var state: State
    init(imageName: String, regions: [String]) {
        self.background = SKSpriteNode(imageNamed: imageName)
        self.regions = regions
        self.state = .white
        super.init()
        addChild(background)
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
extension BridgeNode {
    enum State: Int {
        //The bridge can be visited
        case white = 0
        
        //The bridge cannot be visited now
        case gray = 1
        
        //The bridge was visited
        case black = 2
    }
}
