//
//  MultipleDatePicker.swift
//  SwiftUI_QuicklyImplemented_Features
//
//  Created by Shunzhe on 2022/06/11.
//

import SwiftUI

struct MultipleDatePicker: View {
    
    @State private var userSelectedDates: Set<DateComponents> = []
    
    var body: some View {
        
        Form {
            MultiDatePicker("Select some dates", selection: $userSelectedDates)
            Section {
                Text("Selected dates:\(userSelectedDates.description)")
            }
        }
        
    }
    
}

struct MultipleDatePicker_Previews: PreviewProvider {
    static var previews: some View {
        MultipleDatePicker()
    }
}
