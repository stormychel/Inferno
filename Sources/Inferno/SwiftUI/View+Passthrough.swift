//
//  View+Passthrough.swift
//  Inferno
//
//  Created by Yakup Caglan on 27.01.2026.
//

import SwiftUI

@available(iOS 17, macOS 14, macCatalyst 17, tvOS 17, visionOS 1, *)
public extension View {
    
    /// Returns the view unchanged. Useful for testing and debugging shader pipelines.
    ///
    /// - Returns: The view with no modifications applied.
    func passthrough() -> some View {
        self.colorEffect(
            InfernoShaderLibrary.passthrough()
        )
    }
}
