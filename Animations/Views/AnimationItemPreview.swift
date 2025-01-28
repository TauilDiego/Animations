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
        Text(AnimationItem.title)
            .frame(maxWidth: .infinity, minHeight: 100)
            .background(Color.blue.opacity(0.7))
            .foregroundColor(.white)
            .cornerRadius(10)
    }
}

#Preview {
    AnimationItemPreview(AnimationItem: itemsAnimationsMock[0])
}
