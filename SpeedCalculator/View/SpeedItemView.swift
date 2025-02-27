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
    
    // MARK: Computed properties
    var body: some View {
        
        HStack {

            HStack(alignment: .center) {
                HStack(alignment: .top) {
                    
                    Text("\(speed.distance.formatted())")
                        .font(.largeTitle)
                    
                    Text("\(speed.time.formatted())")
                        .font(.largeTitle)
                }
                HStack {
 
                    Text("=")
                        .font(.largeTitle)
 
                    Text("\(speed.Speed.formatted())")
                        .font(.largeTitle)
                }
            }
            .lineLimit(1)
            .minimumScaleFactor(0.5)
            
            Spacer()
        }
        
    }
}
 
#Preview {
    SpeedItemView(speed: Speed(distance: 3, time: 2))
        .padding()
}
