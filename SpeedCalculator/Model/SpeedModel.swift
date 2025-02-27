//
//  SpeedModel.swift
//  SpeedCalculator
//
//  Created by Skye Willow Harris-Stoertz on 2025-02-27.
//

import Foundation

struct Speed: Identifiable {
    
    // MARK: Stored properties
    let id = UUID()
    let distance: Double
    let time: Double
    
    // MARK: Computed properties
    var Speed: Double {
        return (distance / time)
    }
}
