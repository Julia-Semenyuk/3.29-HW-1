//
//  Model.swift
//  3.29 HW 1
//
//  Created by Юлия on 13.09.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    let present: AnimationPreset
    let curve: AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
}

extension Animation {
    static func getAnimation() -> [Animation] {
        
        var animations: [Animation] = []
        let animationsPresent = AnimationPreset.allCases
        let animationsCurve = AnimationCurve.allCases
        
        let iterationCount = min(
            animationsPresent.count,
            animationsCurve.count
        )
        
        for indexAnimation in 0...(iterationCount) {
            let animation = Animation(
                present: animationsPresent[indexAnimation],
                curve: animationsCurve[indexAnimation],
                force: getRandomForce(),
                duration: getRandomDuration(),
                delay: getRandomDelay()
            )
            animations.append(animation)
        }
        
        return animations
    
    }
    
    private static func getRandomForce() -> Double {
        let force = Double.random(in: 0.2...3)
        return force
        
    }
    
    private static func getRandomDuration() -> Double {
        let duration = Double.random(in: 0.2...3)
        return duration
    }
    
    private static func getRandomDelay() -> Double {
        let delay = Double.random(in: 0.2...3)
        return delay
    }
    
}



