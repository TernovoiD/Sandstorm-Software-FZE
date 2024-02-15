//
//  ButtonModifier.swift
//  SanstormSoftwareFZE
//
//  Created by Danylo Ternovoi on 15.02.2024.
//

import SwiftUI

struct ColoredBorderModifier: ViewModifier {
    
    func body(content: Content) -> some View {
        Color.blue
            .clipShape(RoundedRectangle(cornerRadius: 18))
            .frame(height: 56)
            .background(
                RoundedRectangle(cornerRadius: 18, style: .continuous)
                    .stroke(lineWidth: 3)
                    .foregroundStyle(Color.purple)
            )
            .overlay {
                content
                    .foregroundStyle(Color.white)
            }
    }
}

extension View {
    func coloredBorder() -> some View {
        self.modifier(ColoredBorderModifier())
    }
}
