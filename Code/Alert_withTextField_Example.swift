//
//  Alert_withTextField_Example.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct Alert_withTextField_Example: View {
    
    @State private var typedPasscode: String = ""
    @State private var showPasscodeAlert: Bool = false
    
    var body: some View {
        
        Form {
            Button("Enter passcode and NFC scan") {
                self.typedPasscode = ""
                self.showPasscodeAlert = true
            }
            .alert("Enter card passcode", isPresented: $showPasscodeAlert) {
                TextField("Passcode", text: $typedPasscode)
                Button("Confirm") {
                    print(typedPasscode)
                }
                Button("Cancel", role: .cancel, action: {})
            }
        }
        
    }
    
}

struct Alert_withTextField_Example_Previews: PreviewProvider {
    static var previews: some View {
        Alert_withTextField_Example()
    }
}
