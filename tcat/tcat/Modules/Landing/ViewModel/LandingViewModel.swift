//
//  LandingViewModel.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Factory
import SwiftUI

class LandingViewModel: ObservableObject {
    
    private let searchService: SearchService
    
    var images: [APIGalleryImage] = []
    
    @State var serviceError = false
    
    @State var isLoading = false
    
    init(service: SearchService) {
        self.searchService = service
        self.fetchImages()
    }
    
    private func fetchImages() {
        self.searchService.fetchImages { result in
            switch result {
            case .success(let images):
                self.images = images.data
                self.serviceError = false
            case .failure(let error):
                print(error.localizedDescription)
                self.serviceError = true
            }
            //@ - here
        }
    }
}
