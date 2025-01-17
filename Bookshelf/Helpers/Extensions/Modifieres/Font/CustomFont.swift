//
//  CustomFont.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 17.01.2025.
//

import SwiftUI

struct CustomFont: ViewModifier {
    var font: FontType
    var size: CGFloat
    func body(content: Content) -> some View {
        content.font(.custom(font.rawValue, size: size))
    }
}
