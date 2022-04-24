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
            GameView()
        }
    }
//    init() {
//        let boogalooCFURL = Bundle.main.url(forResource: "Boogaloo-Regular-Regular", withExtension: "ttf")! as CFURL
//        CTFontManagerRegisterFontsForURL(boogalooCFURL, CTFontManagerScope.process, nil)
//    }
}
