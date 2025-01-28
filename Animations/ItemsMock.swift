//
//  ItensMock.swift
//  Animations
//
//  Created by Diego Tauil on 27/01/25.
//

import Foundation

struct ItemsAnimations: Identifiable {
    let id: Int
    let image: String
    let title: String
}


let itemsAnimationsMock: [ItemsAnimations] = [
    .init(id: 1, image: "image1", title: "Item 1"),
    .init(id: 2, image: "image2", title: "Item 2"),
    .init(id: 3, image: "image3", title: "Item 3"),
]
