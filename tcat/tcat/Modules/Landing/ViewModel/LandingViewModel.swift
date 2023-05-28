//
//  LandingViewModel.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Foundation
import Factory

class LandingViewModel: ObservableObject {
    
    private let searchService: SearchService
    
    init(service: SearchService) {
        self.searchService = service
        
        searchService.fetchImages()
    }
    
    
}
