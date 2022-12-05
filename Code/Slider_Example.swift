//
//  Slider_Example.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct Slider_Example: View {
    
    @State private var memoryGBCount: Double = 1
    
    var body: some View {
        
        Form {
            
            // since the step is 1, this will be an integer
            Text("Current memory configuration \(Int(memoryGBCount))GB")
            Slider(value: $memoryGBCount, in: 1...32, step: 1)
            
        }
        
    }
    
}

struct Slider_Example_Previews: PreviewProvider {
    static var previews: some View {
        Slider_Example()
    }
}
