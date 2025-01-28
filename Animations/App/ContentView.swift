//
//  ContentView.swift
//  Animations
//
//  Created by Diego Tauil on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let items: [ItemsAnimations]
    @Namespace private var animationNamespace
    
    var body: some View {
        NavigationStack {
            GeometryReader { geometry in
                let columns = calculateColumns(for: geometry.size.width)
                VStack {
                    
                    ScrollView {
                        LazyVGrid(columns: columns, spacing: 16) {
                            ForEach(items) { mock in
                                NavigationLink {
                                    AnimationItemView(AnimationItem: mock)
                                        .navigationTransition(.zoom(sourceID: mock.id, in: animationNamespace ))
                                } label: {
                                    AnimationItemPreview(AnimationItem: mock)
                                }
                                .matchedTransitionSource(
                                    id: mock.id,
                                    in: animationNamespace
                                )
                            }
                        }
                        .padding()
                    }
                }
                .padding()
            }
        }
    }
    private func calculateColumns(for width: CGFloat) -> [GridItem] {
        let itemWidth: CGFloat = 150
        let numberOfColumns = max(Int(width / itemWidth), 1)
        return Array(repeating: GridItem(.flexible()), count: numberOfColumns)
    }
}

#Preview {
    ContentView(items: itemsAnimationsMock)
}
