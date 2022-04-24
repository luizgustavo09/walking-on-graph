//
//  SwiftUIView.swift
//  
//
//  Created by Luiz Gustavo Silva Aguiar on 24/04/22.
//

import SwiftUI

struct GameOver: View {
    @State var selection: Int? = nil
    var body: some View {
        ZStack {
            Image("gameOver")
                .resizable()
                .edgesIgnoringSafeArea(.all)
            VStack {
                Spacer()
                Button() {
                    selection = 1
                } label: {
                    Image("btnNext")
                        .resizable()
                        .frame(width: 150, height: 100)
                } .padding(.bottom, 140)
            }
        }
        .navigationBarHidden(true)
        .statusBar(hidden: true)
        NavigationLink(destination: EndingView(), tag: 1, selection: $selection) {
            EmptyView()
        }
    }
}
