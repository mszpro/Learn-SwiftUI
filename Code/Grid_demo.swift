//
//  Grid_demo.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI

struct Grid_demo: View {
    
    var body: some View {
        
        Grid(horizontalSpacing: 20, verticalSpacing: 20) {
            
            GridRow {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                    .gridCellColumns(2) // this means this view element will be treated as 2 cell columns.
            }
            
            GridRow {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
            }
            
        }
        
    }
    
}

struct Grid_demo_Previews: PreviewProvider {
    static var previews: some View {
        Grid_demo()
    }
}
