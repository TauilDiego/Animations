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
    .init(id: 4, image: "image1", title: "Item 4"),
    .init(id: 5, image: "image2", title: "Item 5"),
    .init(id: 6, image: "image3", title: "Item 6"),
    .init(id: 7, image: "image1", title: "Item 7"),
    .init(id: 8, image: "image2", title: "Item 8"),
    .init(id: 9, image: "image3", title: "Item 9"),
    .init(id: 10, image: "image1", title: "Item 10"),
    .init(id: 11, image: "image2", title: "Item 11"),
    .init(id: 12, image: "image3", title: "Item 12"),
    .init(id: 13, image: "image1", title: "Item 13"),
    .init(id: 14, image: "image2", title: "Item 14"),
    .init(id: 15, image: "image3", title: "Item 15"),
]
