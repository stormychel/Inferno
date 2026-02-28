//
//  View+Emboss.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Applies an embossing effect to the view by highlighting edges based on neighboring pixel brightness.
    ///
    /// This creates a 3D-like appearance by adding brightness from diagonal pixels in one direction
    /// and subtracting from the opposite direction, simulating light hitting raised surfaces.
    ///
    /// - Parameter strength: How strong the embossing effect should be. Values of 0 to 20 work best.
    ///   This value also determines the `maxSampleOffset`, which defines how far the shader can read
    ///   neighboring pixels.
    /// - Returns: The view with the emboss effect applied.
    func emboss(strength: CGFloat) -> some View {
        self.layerEffect(
            InfernoShaderLibrary.emboss(
                .float(strength)
            ),
            maxSampleOffset: CGSize(width: strength, height: strength)
        )
    }
}
