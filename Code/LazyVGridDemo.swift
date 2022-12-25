//
//  LazyVGridDemo.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/25.
//

import SwiftUI

struct LazyVGridDemo: View {
    
    var gridLayout: [GridItem] {
        .init(repeating: GridItem(.flexible(),
                                  spacing: 10,
                                  alignment: .leading),
              count: 3)
    }
    
    var catPictureLinks: [String] = [
        "https://placekitten.com/200/200",
        "https://placekitten.com/210/210",
        "https://placekitten.com/220/220",
        "https://placekitten.com/230/230",
        "https://placekitten.com/240/240",
        "https://placekitten.com/250/250",
        "https://placekitten.com/260/260",
        "https://placekitten.com/270/270",
        "https://placekitten.com/280/280",
        "https://placekitten.com/290/290",
        "https://placekitten.com/300/300",
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: gridLayout, alignment: .leading) {
                ForEach(catPictureLinks, id: \.self) { catImgLink in
                    if let catImgURL = URL(string: catImgLink) {
                        AsyncImage(url: catImgURL) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                        } placeholder: {
                            ProgressView()
                        }
                        
                    }
                }
            }
        }
        
    }
    
}

struct LazyVGridDemo_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridDemo()
    }
}
