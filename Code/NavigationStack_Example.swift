//
//  NavigationStack.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct NavigationStack_Example: View {
    var body: some View {
        NavigationStack {
            NavigationLink("Go to 2nd view") {
                NavigationStack_secondView()
            }
            .navigationTitle("1st view")
        }
    }
}

struct NavigationStack_secondView: View {
    var body: some View {
        Text("2nd view")
    }
}

struct NavigationStack_Previews: PreviewProvider {
    static var previews: some View {
        NavigationStack_Example()
    }
}
