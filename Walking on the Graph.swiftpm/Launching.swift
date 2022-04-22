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
                Image("launching")
                    .resizable()
                    .edgesIgnoringSafeArea(.all)
                    .onTapGesture {
                        selection = 1
                    }
            }
        }
        .navigationBarHidden(true)
        .navigationViewStyle(StackNavigationViewStyle())
        NavigationLink(destination: IntroView(), tag: 1, selection: $selection) {
            EmptyView()
        }
    }
}
