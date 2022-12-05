//
//  PhotosPicker_Demo.swift
//  SwiftUI-Components-Library
//
//  Created by msz on 2022/12/05.
//

import SwiftUI
import PhotosUI

struct PhotosPicker_Demo: View {
    
    @State private var selectedImage: PhotosPickerItem?
    @State private var newlyPickedImage: UIImage?
    
    var body: some View {
        
        Form {
            
            PhotosPicker("Pick a new background image", selection: $selectedImage, matching: .images)
                .onChange(of: selectedImage) { newValue in
                    if let newValue {
                        newValue.loadTransferable(type: Data.self) { result in
                            switch result {
                                case .success(let success):
                                    if let success,
                                       let imageObj = UIImage(data: success)
                                    {
                                        self.newlyPickedImage = imageObj
                                    }
                                case .failure(let failure):
                                    return
                            }
                        }
                    }
                }
            
            if let newlyPickedImage {
                Image(uiImage: newlyPickedImage)
                    .resizable()
                    .scaledToFit()
            }
            
        }
        
    }
    
}

struct PhotosPicker_Demo_Previews: PreviewProvider {
    static var previews: some View {
        PhotosPicker_Demo()
    }
}
