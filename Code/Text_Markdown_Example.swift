//
//  Text_Markdown_Example.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct Text_Markdown_Example: View {
    var body: some View {
        Text("In SwiftUI, you can **use markdown**. That means, add ** bold ** or *italic* text; add a [link](apple.com), or a `code block`.")
    }
}

struct Text_Markdown_Example_Previews: PreviewProvider {
    static var previews: some View {
        Text_Markdown_Example()
    }
}
