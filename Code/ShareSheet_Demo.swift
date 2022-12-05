//
//  ShareSheet_Demo.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct ShareSheet_Demo: View {
    var body: some View {
        Form {
            ShareLink("Share our URL", item: "View all SwiftUI components at https://swiftui.mszpro.com", preview: SharePreview("SwiftUI view components"))
        }
    }
}

struct ShareSheet_Demo_Previews: PreviewProvider {
    static var previews: some View {
        ShareSheet_Demo()
    }
}
