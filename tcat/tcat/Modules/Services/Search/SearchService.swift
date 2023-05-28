//
//  SearchServiceProtocol.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Combine

protocol SearchService {
    
    func fetchImages()
}

class SearchServiceImplementation: SearchService {
    
    let dataRetriever = URLDataRetriever()
    
    func fetchImages() {
        
        // "https://api.imgur.com/3/gallery/search/{{sort}}/{{window}}/{{page}}?q=cats"
        let url = "https://api.imgur.com/3/gallery/search/%7B%7Bsort%7D%7D/%7B%7Bwindow%7D%7D/1?q=cats"
        
        dataRetriever.retrieve(url: url) { (response: Result<[APIGalleryImage], Error>) in
            // necessitem saber de quin objecte estem parlant per fer entity
        }
    }
  
}
