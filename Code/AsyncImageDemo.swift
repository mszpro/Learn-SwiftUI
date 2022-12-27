//
//  AsyncImageDemo.swift
//  SwiftUI-Components-Library
//
//  Created by Sora on 2022/12/27.
//

import SwiftUI

struct AsyncImageDemo: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://placekitten.com/1100/1100")) { loadedImage in
            loadedImage
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 200, height: 200)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageDemo()
    }
}
