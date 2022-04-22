//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 22/04/22.
//

import SwiftUI

struct IntroView: View {
    @State var index: Int = 0
    @State var selection: Int? = nil
    let images = ["intro1", "intro2", "intro3", "intro4", "introLast"]
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
                       Image("btnStart")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .padding(EdgeInsets(top: geometry.size.height * 0.8, leading: geometry.size.width * 0.7, bottom: geometry.size.height * 0.05, trailing: geometry.size.width * 0.05))
                    }
                } else {
                    Button() {
                        index += 1
                    } label: {
                       Image("btnNext")
                            .resizable()
                            .edgesIgnoringSafeArea(.all)
                            .padding(EdgeInsets(top: geometry.size.height * 0.8, leading: geometry.size.width * 0.8, bottom: geometry.size.height * 0.05, trailing: geometry.size.width * 0.05))
                    }
                }
            }
        }
    }
    
}
