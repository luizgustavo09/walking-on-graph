//
//  Lauching.swift
//  Walking on the Graph
//
//  Created by Luiz Gustavo Silva Aguiar on 22/04/22.
//

import SwiftUI

struct Launching: View {
    @State var selection: Int? = nil
    var body: some View {
        GeometryReader { geometry in
            ZStack {
                NavigationLink(destination: IntroView()) {
                    Image("launching")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                        .frame(width: geometry.size.width, height: geometry.size.height)
                }
                .buttonStyle(FlatLinkStyle())
                VStack {
                    Spacer()
                    Text("Tap to play")
                        .font(Font.custom("Boogaloo-Regular", size: 30))
                        .padding(.bottom, 100)
                }
            }
        }
        
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
