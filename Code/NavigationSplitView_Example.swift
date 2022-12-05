//
//  NavigationSplitView_Example.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct NavigationSplitView_Example: View {
    
    @State private var selectedMenuIndex: Int? = 0
    
    var body: some View {
        
        NavigationSplitView {
            NavigationSplitView_Example_MenuBar(selectedMenuIndex: $selectedMenuIndex)
                .navigationTitle("Menu")
        } detail: {
            Text("Currently selected \(selectedMenuIndex ?? 0)")
        }
        
    }
    
}

struct MenuOption: Identifiable {
    var id: String {
        return menuTitle
    }
    var menuIndex: Int
    var menuTitle: String
}

struct NavigationSplitView_Example_MenuBar: View {
    
    @Binding var selectedMenuIndex: Int?
    
    static let menuOptions: [MenuOption] = [
        .init(menuIndex: 0, menuTitle: "Menu 0"),
        .init(menuIndex: 1, menuTitle: "Menu 1"),
        .init(menuIndex: 2, menuTitle: "Menu 2"),
        .init(menuIndex: 3, menuTitle: "Menu 3")
    ]
    
    var body: some View {
        List(NavigationSplitView_Example_MenuBar.menuOptions, selection: $selectedMenuIndex) { option in
            Text(option.menuTitle)
                .tag(option.menuIndex)
        }
    }
    
}

struct NavigationSplitView_Example_Previews: PreviewProvider {
    static var previews: some View {
        NavigationSplitView_Example()
    }
}
