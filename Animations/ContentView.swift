//
//  ContentView.swift
//  Animations
//
//  Created by Diego Tauil on 27/01/25.
//

import SwiftUI

struct ContentView: View {
    
    let items: [ItemsAnimations]
    
    
    var body: some View {
        GeometryReader { geometry in
            let columns = calculateColumns(for: geometry.size.width)
            VStack {
                
                ScrollView {
                    LazyVGrid(columns: columns, spacing: 16) {
                        ForEach(items) { mock in
                            Text(mock.title)
                                .frame(maxWidth: .infinity, minHeight: 100)
                                .background(Color.blue.opacity(0.7))
                                .foregroundColor(.white)
                                .cornerRadius(10)
                        }
                    }
                    .padding()
                }
            }
            .padding()
        }
    }
    private func calculateColumns(for width: CGFloat) -> [GridItem] {
        let itemWidth: CGFloat = 150
        let numberOfColumns = max(Int(width / itemWidth), 1) // Garante pelo menos 1 coluna
        return Array(repeating: GridItem(.flexible()), count: numberOfColumns)
    }
}

#Preview {
    ContentView(items: itemsAnimationsMock)
}
