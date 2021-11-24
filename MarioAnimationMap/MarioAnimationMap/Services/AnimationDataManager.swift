//
//  AnimationManager.swift
//  MarioAnimationMap
//
//  Created by Михаил Зиновьев on 24.11.2021.
//

import Spring

class AnimationDataManager {
    
    static let shared = AnimationDataManager()
    
    private let range = 1..<3
    
    private init() {
    }
    
    func getRandomAnimationType() -> String {
        return Spring.AnimationPreset.allCases.randomElement()?.rawValue ?? ""
    }
    
    func getRandomCurve() -> String {
        return Spring.AnimationCurve.allCases.randomElement()?.rawValue ?? ""
    }
    
    func getRandomForce() -> Int {
        return Int.random(in: range)
    }
    
    func getRandomDuration() -> Int {
        return Int.random(in: range)
    }
    
    func getRandomDelay() -> Int {
        return Int.random(in: range)
    }
}
