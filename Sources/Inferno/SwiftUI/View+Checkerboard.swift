//
//  View+Checkerboard.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
   
    /// Applies a checkerboard pattern effect to the view.
    ///
    /// - Parameters:
    ///   - size: The size of each square in the checkerboard pattern.
    ///   - color: The color to use for the checkered squares.
    /// - Returns: The view with the checkerboard effect applied.
    func checkerboard(size: CGFloat, color: Color) -> some View {
        self.colorEffect(
            InfernoShaderLibrary.checkerboard(
                .color(color),
                .float(size)
            )
        )
    }
}
