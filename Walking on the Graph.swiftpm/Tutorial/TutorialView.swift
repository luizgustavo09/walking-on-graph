//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 22/04/22.
//

import SwiftUI

struct TutorialView: View {
    @State var index: Int = 0
    @State var selection: Int? = nil
    let images = ["tutorial1", "tutorial2", "tutorial7", "tutorial8", "tutorial9", "tutorial11", "tutorialLast"]
    var body: some View {
        GeometryReader { geometry in
            let height = geometry.size.height
            let width = geometry.size.width
            let insets = ButtonInsets(height: height, width: width)
            ZStack {
                Image(images[index])
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .frame(width: width, height: height)
                if index == 0 {
                    Button() {
                        index += 1
                    } label: {
                       Image("btnNext")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .padding(EdgeInsets(top: insets.top, leading: insets.leading, bottom: insets.bottom, trailing: insets.trailing))
                    }
                } else if index == images.count - 1 {
                    Button() {
                        selection = 1
                    } label: {
                        Image("btnPlay")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .frame(width: 150, height: 100)
                    }
                    .padding(.top, 80)
                } else {
                    Button() {
                        index += 1
                    } label: {
                       Image("btnNext")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .padding(EdgeInsets(top: insets.top, leading: insets.leading, bottom: insets.bottom, trailing: insets.trailing))
                    }
                }
            }
        }
            .navigationBarHidden(true)
            .statusBar(hidden: true)
        NavigationLink(destination: GameView(), tag: 1, selection: $selection) {
            EmptyView()
        }
    }
}
