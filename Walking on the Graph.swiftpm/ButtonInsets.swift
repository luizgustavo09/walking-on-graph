//
//  ButtonInsets.swift
//  Walking on the Graph
//
//  Created by Luiz Gustavo Silva Aguiar on 22/04/22.
//

import CoreGraphics

struct ButtonInsets {
    let top: CGFloat
    let leading: CGFloat
    let bottom: CGFloat
    let trailing: CGFloat
    
    init(height: CGFloat, width: CGFloat) {
        top = height * 0.8
        leading = width * 0.8
        bottom = height * 0.05
        trailing = width * 0.05
    }
}
