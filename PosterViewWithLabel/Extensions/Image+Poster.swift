//
//  Image+Poster.swift
//  PosterViewWithLabel
//
//  Created by Shane Whitehead on 23/1/2024.
//

import Foundation
import SwiftUI

extension Image {
    static let posterWidth: CGFloat = 77 * 2
    static var posterHeight: CGFloat {
        return posterWidth / 0.666666666666667
    }
    
    // Possibility to better define the desired size options
    func asPoster() -> some View {
        self
            .resizable()
            .aspectRatio(contentMode: .fit)
            .frame(width: Image.posterWidth, height: Image.posterHeight)
            .fixedSize()
            .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
