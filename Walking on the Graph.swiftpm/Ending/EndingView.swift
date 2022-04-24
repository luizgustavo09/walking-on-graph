//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 23/04/22.
//

import SwiftUI

struct EndingView: View {
    @State var index: Int = 0
    @State var selection: Int? = nil
    let images = ["ending1", "ending2", "ending3", "ending4", "ending5", "ending6", "ending7", "end"]
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
                if index < images.count - 1  {
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
    }
}
