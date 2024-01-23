//
//  ContentView.swift
//  PosterViewWithLabel
//
//  Created by Shane Whitehead on 22/1/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack(alignment: Alignment(horizontal: .center, vertical: .center)) {
            // Background
            Assets.babyYodaPoster
                .resizable()
                .scaledToFill()
                .blur(radius: 8)
                .opacity(0.4)
            VStack(spacing: -16) {
                postImageView()
                    .zIndex(1)

                postLabelView()
                    .zIndex(0)
                
            }
            .compositingGroup()
            .shadow(
                color: .black.opacity(0.9),
                radius: 8, 
                x: 8,
                y: 8
            )
            // scaledToFill on the background image
            // offsets the content for some reason :/
            .offset(CGSize(width: -28.5, height: 0))
        }
        .background(.posterBackgroundFill)
        .ignoresSafeArea()
    }
    
    private func postImageView() -> some View {
        ZStack {
            Assets.babyYodaPoster
                .asPoster()
        }
        .shadow(
            color: .black.opacity(0.9),
            radius: 4,
            x: 0,
            y: 4
        )
    }
    
    private func postLabelView() -> some View {
        Text("Your master I am")
            .multilineTextAlignment(.center)
            .padding(.top, 24)
            .padding(.leading)
            .padding(.trailing)
            .padding(.bottom)
            .frame(width: Image.posterWidth)
            .background(.ultraThinMaterial)
            .roundedCorners([.bottomLeft, .bottomRight], radius: 16)
    }
}

#Preview {
    ContentView()
}
