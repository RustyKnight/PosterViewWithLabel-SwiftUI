//
//  View+CornerRadius.swift
//  PosterViewWithLabel
//
//  Created by Shane Whitehead on 22/1/2024.
//

import Foundation
import SwiftUI
#if os(iOS)
import UIKit

public extension View {
    func roundedCorners(_ corners: UIRectCorner, radius: CGFloat) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
#elseif os(macOS)
public extension View {
    func roundedCorners(_ corners: RectCorner, radius: CGFloat) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}
#endif
