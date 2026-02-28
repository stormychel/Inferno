//
//  View+InvertAlpha.swift
//  Inferno
//
//  Created by Yakup Caglan on 26.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Inverts the alpha values of the view, replacing transparent areas with a specified color.
    ///
    /// - Parameter replacement: The color to use for pixels that were originally transparent.
    /// - Returns: The view with the inverted alpha effect applied.
    func invertAlpha(replacement: Color) -> some View {
        self.colorEffect(
            InfernoShaderLibrary.invertAlpha(
                .color(replacement)
            )
        )
    }
}
