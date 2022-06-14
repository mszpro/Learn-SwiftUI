//
//  Gauge_ProgressDisplay.swift
//  SwiftUI_QuicklyImplemented_Features
//
//  Created by Shunzhe on 2022/06/11.
//

import SwiftUI

struct Gauge_ProgressDisplay: View {
    
    @State private var displayedProgress: Double = 0.5
    
    var body: some View {
        
        Form {
            
            Section {
                Gauge(value: displayedProgress) {
                    Text("Default Gauge")
                }
            }
            
            Section {
                Gauge(value: 50, in: 0...100) {
                    Text("Default Gauge")
                } currentValueLabel: {
                    Text("50%")
                } minimumValueLabel: {
                    Text("0%")
                } maximumValueLabel: {
                    Text("100%")
                }
            }
            
            Gauge(value: 50, in: 0...100) {
                Text("Default Gauge")
            } currentValueLabel: {
                Text("50%")
                    .font(.caption)
            } minimumValueLabel: {
                Text("0")
                    .font(.caption)
            } maximumValueLabel: {
                Text("100")
                    .font(.caption)
            }
            .gaugeStyle(.accessoryCircular)
            
            // circular gauge
            Gauge(value: displayedProgress) {
                Text("%")
            }
            .gaugeStyle(.accessoryCircular)
            
            // circular gauge with grediant background
            Section {
                Gauge(value: 23, in: 17...29) {
                    Text("°C")
                } currentValueLabel: {
                    Text("23")
                }
                .gaugeStyle(.accessoryCircular)
                .tint(Gradient(colors: [.green, .yellow, .orange]))
            }
            
            // circular gauge with progress display
            Section {
                Gauge(value: displayedProgress) {
                    Text("%")
                } currentValueLabel: {
                    Text("\(Int(displayedProgress * 100))")
                }
                .gaugeStyle(.accessoryCircular)
            }
            
        }
        
    }
    
}

struct Gauge_ProgressDisplay_Previews: PreviewProvider {
    static var previews: some View {
        Gauge_ProgressDisplay()
    }
}
