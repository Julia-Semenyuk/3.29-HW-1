//
//  Extension + Animation.swift
//  3.29 HW 1
//
//  Created by Юлия on 14.09.2022.
//

import Foundation
import SpringAnimation

extension Animation {
    static func getAnimation() -> Animation {
        
        let animationsPresent = AnimationPreset.allCases
        let animationsCurve = AnimationCurve.allCases
        
        let iterationCount = min(
            animationsPresent.count,
            animationsCurve.count
        )
        
        for indexAnimation in 0...(iterationCount-1) {
            let animate = Animation(
                preset: animationsPresent.index,
                curve: animationsCurve.index,
                force: getRandomForce(),
                duration: getRandomDuration(),
                delay: getRandomDelay()
            )
       }
        
  }
    
   private static func getRandomForce() -> Double {
       _ = Double.random(in: 0.2...3)
    }
    
    private static func getRandomDuration() -> Double {
        _ = Double.random(in: 0.2...3)
    }
    
    private static func getRandomDelay() -> Double {
        _ = Double.random(in: 0.2...3)
    }
    
}

