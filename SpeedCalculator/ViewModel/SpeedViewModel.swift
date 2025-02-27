//
//  SpeedViewModel.swift
//  SpeedCalculator
//
//  Created by Skye Willow Harris-Stoertz on 2025-02-27.
//

import SwiftUI

@Observable
class SpeedViewModel {
    
    
    // MARK: Stored properties
    
    var resultHistory: [Speed] = []
    
    var providedDistance: String
    
    var providedTime: String
    
    var recoverySuggestion: String = ""
    
    
    // MARK: Computed properties
    
    var speed: Speed? {
        
        // Require numeric values
        
        guard let distance = Double(providedDistance) else {
            recoverySuggestion = "Please provide a numeric value for the distance."
            
            return nil
        }
        
        guard let time = Double(providedTime) else {
            recoverySuggestion = "Please provide a numeric value for the time."
            
            return nil
        }
        
        // Require values higher than zero
        
        guard let distance = Double(providedDistance), distance > 0 else {
            recoverySuggestion = "Please provide value higher than zero for the distance."
            
            return nil
        }
        
        guard let time = Double(providedTime), time > 0 else {
            recoverySuggestion = "Please provide value higher than zero for the time."
            
            return nil
        }
        
        
        recoverySuggestion = "" // No error message
        return Speed(distance: distance, time: time)
        
    }
    
    
    // MARK: Initializer(s)
    init(providedDistance: String = "",
         providedTime: String = "",
         recoverySuggestion: String = ""
    ) {
        self.providedDistance = providedDistance
        self.providedTime = providedTime
        self.recoverySuggestion = recoverySuggestion
    }
    
    
    
    // MARK: Function(s)
    func saveResult() {
        
        if let speed = self.speed {
            
            self.resultHistory.insert(speed, at: 0)
        }
        
    }
    
}
