//
//  GalleryCellView.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 6/6/23.
//

import SwiftUI

struct GalleryCellView: View {
    
    //MARK: - Attributes
    let image: APIGalleryImage
    
    let link: URL?
    
    var block: () -> Void
    
    init(image: APIGalleryImage, block: @escaping () -> Void) {
        self.image = image
        let link = image.images?.first?.link ?? ""
        self.link = URL(string: link)
        self.block = block
    }
    
    //MARK: - Body
    var body: some View {
        VStack {
            AsyncImage(url: link) { image in
                image.resizable()
            } placeholder: {
                Color.indigo
            }
            .frame(width: 128, height: 128)
            .clipShape(RoundedRectangle(cornerRadius: 16))
            
            Text(image.title)
                .frame(width: 128)
                .onAppear {
                    self.block()
                }
            
            Text(String(image.views))
            Spacer()
        }
        .frame(height: 210)
    }
}
