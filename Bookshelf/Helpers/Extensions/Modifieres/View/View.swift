//
//  View.swift
//  Bookshelf
//
//  Created by Ivan Pushkov on 17.01.2025.
//

import SwiftUI

extension View{
    func font(type: FontType = .regular, size: CGFloat = 14)-> some View{
        modifier(CustomFont(font: type, size: size))
    }
}
