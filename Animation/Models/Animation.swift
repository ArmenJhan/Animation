//
//  Animation.swift
//  Animation
//
//  Created by Armen Madoyan on 01.11.2022.
//


struct Animation {
    let preset: String
    let curve: String
    let force: Double
    let duration: Double
    let delay: Double
    
    static func getAnimation() -> Animation {
        
        let presets = DataStore.shared.presets
        let curves = DataStore.shared.curves
        let forces = Double.random(in: 1...1.3)
        let durations = Double.random(in: 0.80...1.1)
        let delays = Double.random(in: 0...0.3)
        
        let animation = Animation(
            preset: presets.randomElement() ?? "",
            curve: curves.randomElement() ?? "",
            force: forces,
            duration: durations,
            delay: delays
        )
        
        return animation
    }
}
