//
//  SpeedItemView.swift
//  SpeedCalculator
//
//  Created by Skye Willow Harris-Stoertz on 2025-02-27.
//

import SwiftUI

struct SpeedItemView: View {
    
    // MARK: Stored properties
    let speed: Speed
    let shortFormat: Bool
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            if shortFormat == false {
                
                Text("Speed was \(speed.Speed) km/h")
                Text("Distance was \(speed.distance) km")

            }
            
            HStack {
                
                HStack(alignment: .center) {
                    HStack(alignment: .top) {
                        
                        Text("Speed")
                            .font(.title2)
                    }
                    
                    Text("=")
                        .font(.largeTitle)
                    
                    Text("\(speed.Speed.formatted()) km/h")
                        .font(.largeTitle)
                    
                }
                .lineLimit(1)
                .minimumScaleFactor(0.5)
                
            }
        }
        
    }
}

#Preview {
    SpeedItemView(speed: Speed(distance: 3, time: 2), shortFormat: true)
        .padding()
    SpeedItemView(speed: Speed(distance: 3, time: 2), shortFormat: false)
        .padding()
}
