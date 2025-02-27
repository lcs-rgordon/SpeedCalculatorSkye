//
//  SpeedView.swift
//  SpeedCalculator
//
//  Created by Skye Willow Harris-Stoertz on 2025-02-27.
//

import SwiftUI

struct SpeedView: View {
    
    // MARK: Stored properties
    @State var viewModel = SpeedViewModel()
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // OUTPUT

            if let speed = viewModel.fahrenheitToCelsius {
                
                VStack(spacing: 0) {
                    
                    FahrenheitToCelsiusItemView(fahrenheitToCelsius: fahrenheitToCelsius)
                        .padding(.bottom, 30)
                    
                    // Add a button so that the result can be saved
                    Button {
                        viewModel.saveResult()
                        // DEBUG: Show how many items are in the resultHistory array
                        print("There are \(viewModel.resultHistory.count) elements in the resultHistory array.")
                    } label: {
                        Text("Save")
                    }
                    .buttonStyle(.borderedProminent)
                    .padding(.bottom)
                }
                .frame(height: 250)
                
            
            
            } else {
                ContentUnavailableView("Unable to perform calculation", systemImage: "gear.badge.questionmark", description: Text(viewModel.recoverySuggestion))
                    .frame(height: 250)

            }
            
            // INPUT
            TextField("Enter a distance in kilometres", text: $viewModel.providedDistance)
                .textFieldStyle(.roundedBorder)
            
            TextField("Enter a time in hours", text: $viewModel.providedTime)
                .textFieldStyle(.roundedBorder)
            
            HStack {
                Text("History")
                    .font(.title2)
                    .bold()
                
                Spacer()
            }
            .padding(.top)
            
            // Iterate over the list of results
            List(viewModel.resultHistory) { currentResult in
                
                SpeedItemView(speed: currentResult)
                
            }
            .listStyle(.plain)
            
            
        }
        .navigationTitle("Speed Calculator")
        .padding()
    }
}

#Preview {
    NavigationStack {
        SpeedView()
    }
}
