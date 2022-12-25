//
//  GroupBoxExample.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/25.
//

import SwiftUI

struct GroupBoxExample: View {
    var body: some View {
        GroupBox("This is the title") {
            Label("Here is the content", systemImage: "checkmark.circle.fill")
                .padding(.top, 3)
        }
        .padding()
    }
}

struct GroupBoxExample_Previews: PreviewProvider {
    static var previews: some View {
        GroupBoxExample()
    }
}
