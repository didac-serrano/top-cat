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
    
    let viewModel = LandingViewModel(service: Container.shared.searchService())
    
    var body: some Scene {
        WindowGroup {
            SplashView(viewModel: viewModel)
        }
    }
}

extension Container {
    
    var searchService: Factory<SearchService> {
        Factory(self) { SearchServiceImplementation() }
    }
}
