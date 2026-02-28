//
//  View+RainbowNoise.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Applies a dynamic, multi-colored noise effect to the view.
    ///
    /// - Parameter time: The time value used to animate the noise. Pass in a changing value to create animation.
    /// - Returns: The view with the rainbow noise effect applied.
    func rainbowNoise(time: CGFloat) -> some View {
        self.colorEffect(
            InfernoShaderLibrary.rainbowNoise(
                .float(time)
            )
        )
    }
}
