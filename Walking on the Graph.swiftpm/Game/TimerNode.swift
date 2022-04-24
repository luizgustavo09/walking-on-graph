//
//  File.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 24/04/22.
//

import SpriteKit

class TimerNode: SKNode {
    var timerLabel: SKLabelNode
    var background: SKShapeNode
    var timerValue: Int = 40 {
        didSet {
            timerLabel.text = "\(timerValue)"
        }
    }
    
    init(size: CGSize, position: CGPoint) {
        background = SKShapeNode(rect: CGRect(x: position.x, y: position.y, width: size.width, height: size.height))
        background.fillColor = UIColor.timerBackground
        timerLabel = SKLabelNode()
        timerLabel.fontColor = .black
        super.init()
        addChild(background)
        addChild(timerLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
