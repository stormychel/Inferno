//
//  View+Infrared.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
   
    /// Applies a simulated infrared thermal camera effect to the view, replacing colors based on brightness.
    ///
    /// - Returns: The view with the infrared effect applied.
    func infrared() -> some View {
        self.colorEffect(
            InfernoShaderLibrary.infrared()
        )
    }
}
