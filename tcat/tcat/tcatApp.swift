//
//  tcatApp.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 27/5/23.
//

import SwiftUI
import Factory

@main
struct tcatApp: App {
    
    var body: some Scene {
        WindowGroup {
            RootView()
        }
    }
}

extension Container {
    
    //MARK: - Services
    var searchService: Factory<SearchService> {
        Factory(self) { SearchServiceImplementation() }
    }
}
