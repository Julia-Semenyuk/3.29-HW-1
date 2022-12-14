//
//  Model.swift
//  3.29 HW 1
//
//  Created by Юлия on 13.09.2022.
//

import Foundation
import SpringAnimation

struct Animation {
    
    let preset: AnimationPreset
    let curve: AnimationCurve
    let force: Double
    let duration: Double
    let delay: Double
    
    var fullName: String {
    """
\(preset)
\(curve)
\(force)
\(delay)
"""
    }
    
}
        
     
    
    
    



