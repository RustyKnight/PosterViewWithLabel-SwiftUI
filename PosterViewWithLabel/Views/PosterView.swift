//
//  PosterView.swift
//  PosterViewWithLabel
//
//  Created by Shane Whitehead on 22/1/2024.
//

import Foundation
import SwiftUI

struct PosterView: View {
    static let width: CGFloat = 77 * 2
    static var height: CGFloat {
        return width / 0.666666666666667
    }
    
    var posterImage: Image
    
    init(posterImage: Image) {
        self.posterImage = posterImage
    }
    
    var body: some View {
        ZStack {
            posterImage
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: PosterView.width, height: PosterView.height)
                .fixedSize()
        }
        .clipShape(RoundedRectangle(cornerRadius: 16))
    }
}
