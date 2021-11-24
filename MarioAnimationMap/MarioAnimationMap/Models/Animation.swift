//
//  Animation.swift
//  MarioAnimationMap
//
//  Created by Михаил Зиновьев on 24.11.2021.
//

import Foundation

struct Animation {
    let animationType: String
    let curve: String
    let force: Int
    let duration: Int
    let delay: Int
    var info: String {
        """
        animation = \(animationType)
        curve = \(curve)
        force = \(force)
        duration = \(duration)
        delay = \(delay)
        """
    }
    
    private static let animationManager = AnimationDataManager.shared
}

extension Animation {
    static func getAnimation() -> Animation {
        return Animation(animationType: "squeeze",
                                  curve: "easeIn",
                                  force: 5,
                                  duration: 1,
                                  delay: 1)
    }
}
