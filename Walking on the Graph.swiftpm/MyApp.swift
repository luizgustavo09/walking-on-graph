//
//  File.swift
//
//
//  Created by Luiz Gustavo Silva Aguiar on 22/04/22.
//

import SwiftUI

@main
struct MyApp: App {
    var body: some Scene {
        WindowGroup {
            NavigationView {
                Launching()
            }
            .navigationBarHidden(true)
            .statusBar(hidden: true)
            .navigationViewStyle(StackNavigationViewStyle())
        }
    }
    init() {
        let boogalooCFURL = Bundle.main.url(forResource: "Boogaloo-Regular", withExtension: "ttf")! as CFURL
        CTFontManagerRegisterFontsForURL(boogalooCFURL, CTFontManagerScope.process, nil)
    }
}
