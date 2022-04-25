//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SwiftUI
import SpriteKit


struct GameView: View {
    @State var isAlive: Bool? = true
    @State var selection: Int? = nil
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @StateObject private var viewManager = ViewManager.shared
    var scene: SKScene {
        let scene = GameScene(size: CGSize(width: 100, height: 100))
        scene.scaleMode = .resizeFill
        return scene
    }
    var body: some View {
        ZStack {
            SpriteView(scene: self.scene, isPaused: !isAlive!)
                .edgesIgnoringSafeArea(.all)
                .navigationBarHidden(true)
                .statusBar(hidden: true)
            if viewManager.exitView {
                Button {
                    selection = 1
//                    presentationMode.wrappedValue.dismiss()
//                    viewManager.exitView = false
                } label: {
                    Text("Continue")
                        .font(Font.custom("Boogaloo-Regular", size: 60))
                        .font(.largeTitle)
                }
                .foregroundColor(Color(uiColor: .primaryPurple))
                .padding(.trailing, 150)
                .padding(.bottom, 250)
            }
            NavigationLink(destination: GameOver(), tag: 1, selection: $selection) {
               EmptyView()
            }
        }
        
    }
}
