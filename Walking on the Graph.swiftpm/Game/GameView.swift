//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SwiftUI
import SpriteKit

struct GameView: View {
    var scene: SKScene {
        let scene = GameScene()
        scene.scaleMode = .resizeFill
        return scene
    }
    var body: some View {
        SpriteView(scene: self.scene)
            .edgesIgnoringSafeArea(.all)
    }
}
