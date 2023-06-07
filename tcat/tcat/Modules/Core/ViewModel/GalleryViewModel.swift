//
//  LandingViewModel.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Factory
import SwiftUI

class GalleryViewModel: ObservableObject {
    
    private let searchService: SearchService
    
    private var currentPage = 0
    
    @Published var images: [APIGalleryImage] = []
    
    @Published var serviceError = false
    
    @Published var isLoading = false
    
    init() {
        self.searchService = Container.shared.searchService()
        self.fetchImages()
    }

    func isMoreContentNeeded(currentItem item: APIGalleryImage?) {
        guard let item = item else {
            self.fetchImages()
            return
        }
        
        let threshold = images.index(images.endIndex, offsetBy: -20)
        if images.firstIndex(where: { $0.id == item.id }) == threshold {
            self.fetchImages()
        }
    }
    
    private func fetchImages() {
        guard !isLoading else {
            return
        }
        isLoading = true
        self.searchService.fetchImages(page: currentPage) { result in
            switch result {
            case .success(let images):
                var data = images.data.sorted {
                    $0.score > $1.score
                }
                /** images not showing was due to being animated */
                data = data.filter { image in
                    image.images != nil &&
                    !(image.images?.first?.animated ?? true)
                }
#if DEBUG
                print(data.first?.score ?? "score error")
#endif
                DispatchQueue.main.async {
                    self.images.append(contentsOf: data)
                    self.serviceError = false
                    self.currentPage += 1
                    self.isLoading = false
                }
            case .failure(let error):
                print(error.localizedDescription)
                DispatchQueue.main.async {
                    self.serviceError = true
                    self.isLoading = false
                }
            }
        }
    }
}
