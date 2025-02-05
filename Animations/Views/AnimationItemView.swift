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
                        Text("\(rotationX)")
                    }
                    
                    HStack {
                        Spacer()
                        Image(AnimationItem.image)
                            .resizable()
                            .frame(width: 300, height: 300)
                            .cornerRadius(20)
//                            .clipShape(Circle())
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
                                        rotationX = value.translation.width
                                    }
                                    .onEnded { value in
                                        let diff360 = value.predictedEndLocation.x.truncatingRemainder(dividingBy: 360)
                                        withAnimation(.spring()) {
                                            
                                            rotationX =  value.predictedEndLocation.x - diff360
                                            
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
