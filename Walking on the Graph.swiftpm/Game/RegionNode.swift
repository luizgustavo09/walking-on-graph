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
//    var state: State {
//        didSet {
//            if state == .white {
//                background.texture = SKTexture(imageNamed: "region\(self.name!)")
//            } else {
//                background.texture = SKTexture(imageNamed: "region\(self.name!)B")
//            }
//        }
//    }
    var bridges: [String] = []
    init(imageName: String, bridges: [String]) {
        background = SKSpriteNode(imageNamed: imageName)
        self.bridges = bridges
        state = .white
        super.init()
        addChild(background)
        self.isUserInteractionEnabled = true
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.state = .black
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
