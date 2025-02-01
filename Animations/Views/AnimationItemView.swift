//
//  AnimationItemView.swift
//  Animations
//
//  Created by Diego Tauil on 28/01/25.
//

import SwiftUI

struct AnimationItemView: View {
    let AnimationItem: ItemsAnimations
    
    @State private var rotationX: Double = 0.0
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    HStack {
                        Spacer()
                        Text("\(AnimationItem.title)")
                            .font(.headline)
                            .fontWeight(.semibold)
                            .foregroundColor(.accentColor)
                        
                        Spacer()
                    }
                    
                    HStack {
                        Spacer()
                        Image(AnimationItem.image)
                            .resizable()
                            .frame(width: 300, height: 300)
                            .cornerRadius(20)
                            .clipShape(Circle())
//                            .overlay {
//                                Circle().stroke(Color.gray, lineWidth: 4)
//                            }
                            .shadow(radius: 10)
                            .rotation3DEffect(
                                .degrees(rotationX),
                                axis: (x: 0, y: 1, z: 0)
                            )
                            .gesture(
                                DragGesture()
                                    .onChanged { value in
                                        rotationX = value.translation.height * 1
                                    }
                                    .onEnded { _ in
                                        withAnimation(.spring()) {
                                            rotationX = 0
                                        }
                                    }
                                
                            )
                        Spacer()
                    }
                }
                
                
                Spacer()
                
            }
        }
        
    }
}

#Preview {
    AnimationItemView(AnimationItem: itemsAnimationsMock[0])
}
