//
//  DataPasteButton.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/25.
//

import SwiftUI

struct DataPasteButton: View {
    
    @State private var userPastedImageObj: UIImage?
    
    var body: some View {
        
        Form {
            
            PasteButton(supportedContentTypes: [.image]) { providers in
                if let firstProvider = providers.first {
                    _ = firstProvider.loadDataRepresentation(for: .image) { data, error in
                        if let data,
                           let imageObj = UIImage(data: data) {
                            self.userPastedImageObj = imageObj
                        }
                    }
                }
            }
            .buttonBorderShape(.capsule)
            
            if let userPastedImageObj {
                Image(uiImage: userPastedImageObj)
                    .resizable()
                    .scaledToFit()
            }
            
        }
        
    }
    
}

struct DataPasteButton_Previews: PreviewProvider {
    static var previews: some View {
        DataPasteButton()
    }
}
