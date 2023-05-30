//
//  SearchServiceProtocol.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import Combine

protocol SearchService {
    
    func fetchImages(resultBlock: @escaping (Result<APIGallerySearchResponse, Error>) -> Void)
}

class SearchServiceImplementation: SearchService {
    
    let dataRetriever = URLDataRetriever()
    
    func fetchImages(resultBlock: @escaping (Result<APIGallerySearchResponse, Error>) -> Void) {
        
        // "https://api.imgur.com/3/gallery/search/{{sort}}/{{window}}/{{page}}?q=cats"
        let url = "https://api.imgur.com/3/gallery/search/%7B%7Bsort%7D%7D/%7B%7Bwindow%7D%7D/1?q=cats"
        
        dataRetriever.retrieve(url: url) { (result: Result<APIGallerySearchResponse, Error>) in
            //print(result)
            resultBlock(result)
        }
    }
  
}
