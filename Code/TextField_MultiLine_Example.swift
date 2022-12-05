//
//  TextField_MultiLine_Example.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

/*
 TextField that grows vertically and can contain multiple lines
 - Available for iOS 16 and up
 */
struct TextField_MultiLine_Example: View {
    
    @State private var userEnteredText: String = "This is a multi-line textfield. Meaning, the text can take multiple lines and the field will extend to display all the text."
    
    var body: some View {
        
        Form {
            TextField("Enter some text", text: $userEnteredText, axis: .vertical)
        }
        
    }
    
}

struct TextField_MultiLine_Example_Previews: PreviewProvider {
    static var previews: some View {
        TextField_MultiLine_Example()
    }
}
