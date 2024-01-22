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
                ZStack {
                    PosterView(posterImage: Assets.babyYodaPoster)
                }
                .shadow(
                    color: .black.opacity(0.9),
                    radius: 4,
                    x: 0, 
                    y: 4
                )
                .zIndex(1)
                
                Text("Your master I am")
                    .multilineTextAlignment(.center)
                    .padding(.top, 24)
                    .padding(.leading)
                    .padding(.trailing)
                    .padding(.bottom)
                    .frame(width: PosterView.width)
                    .background(.ultraThinMaterial)
                    .roundedCorners([.bottomLeft, .bottomRight], radius: 16)
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
}

#Preview {
    ContentView()
}
