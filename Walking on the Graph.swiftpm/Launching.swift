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
        NavigationView {
            ZStack {
                NavigationLink(destination: IntroView()) {
                    Image("launching")
                        .resizable()
                        .edgesIgnoringSafeArea(.all)
                }
                .buttonStyle(FlatLinkStyle())
                Text("Tap to play")
                    .font(Font.custom("Boogaloo-Regular", size: 10))
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
    }
}

struct FlatLinkStyle: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
    }
}
