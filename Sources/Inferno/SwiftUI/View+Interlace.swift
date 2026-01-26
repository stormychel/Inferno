//
//  View+Interlace.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {

    /// Applies an interlacing effect where horizontal lines of the original color are separated by lines of another color.
    ///
    /// - Parameters:
    ///   - width: The width of the interlacing lines. Ranges of 1 to 4 work best; try starting with 1.
    ///   - color: The color to use for interlacing lines. Try starting with black.
    ///   - strength: How much to blend interlaced lines with color, from 0 (not at all) to 1 (fully).
    /// - Returns: The view with the interlace effect applied.
    func interlace(width: CGFloat, color: Color, strength: Float) -> some View {
        self.colorEffect(
            InfernoShaderLibrary.interlace(
                .float(width),
                .color(color),
                .float(strength)
            )
        )
    }
}
