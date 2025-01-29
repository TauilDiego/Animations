//
//  AnimationItemView.swift
//  Animations
//
//  Created by Diego Tauil on 28/01/25.
//

import SwiftUI

struct AnimationItemView: View {
    let AnimationItem: ItemsAnimations
    
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
