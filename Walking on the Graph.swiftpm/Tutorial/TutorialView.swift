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
    let images = ["tutorial1", "tutorial2", "tutorial3", "tutorial7", "tutorial8", "tutorial9", "tutorial10", "tutorial11", "tutorialLast"]
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                Image(images[index])
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                if index == images.count - 1 {
                    Button() {
                        selection = 1
                    } label: {
                        Image("btnPlay")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .padding(EdgeInsets(top: geometry.size.height * 0.8, leading: geometry.size.width * 0.7, bottom: geometry.size.height * 0.05, trailing: geometry.size.width * 0.05))
                    }
                } else {
                    Button() {
                        index += 1
                    } label: {
                       Image("btnPlay")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                    }
                }
            }
        }
    }
}
