//
//  View+Recolor.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Recolors the view with a replacement color while preserving the original alpha values.
    ///
    /// - Parameter color: The new color to use in place of the current colors.
    /// - Returns: The view with the recolor effect applied.
    func recolor(to color: Color) -> some View {
        self.colorEffect(
            InfernoShaderLibrary.recolor(
                .color(color)
            )
        )
    }
}
