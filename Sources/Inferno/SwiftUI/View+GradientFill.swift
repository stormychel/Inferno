//
//  View+GradientFill.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Applies a diagonal gradient fill effect to the view, transitioning from blue to purple to red.
    ///
    /// - Returns: The view with the gradient fill effect applied.
    func gradientFill() -> some View {
        self.colorEffect(
            InfernoShaderLibrary.gradientFill()
        )
    }
}
