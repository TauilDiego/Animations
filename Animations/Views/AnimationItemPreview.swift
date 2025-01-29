//
//  AnimationItemPreview.swift
//  Animations
//
//  Created by Diego Tauil on 28/01/25.
//

import SwiftUI

struct AnimationItemPreview: View {
    let AnimationItem: ItemsAnimations
    
    var body: some View {
        ZStack {
            Image(AnimationItem.image)
                .resizable()
                .frame(width: .infinity, height: 100)
                .shadow(radius: 10)
                .cornerRadius(10)
            
            Text(AnimationItem.title)
                .frame(maxWidth: .infinity, minHeight: 100)
                .foregroundColor(.purple)
                .font(.title)
                .bold()
                .cornerRadius(10)
        }
        
    }
}

#Preview {
    AnimationItemPreview(AnimationItem: itemsAnimationsMock[0])
}
