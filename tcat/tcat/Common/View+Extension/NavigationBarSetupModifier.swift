//
//  NavigationBarSetupModifier.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 30/5/23.
//

import SwiftUI

struct NavigationBarSetupModifier: ViewModifier {
    
    init() {
        let appearance = UINavigationBarAppearance()
        UINavigationBar.appearance().standardAppearance = appearance
        UINavigationBar.appearance().compactAppearance = appearance
        UINavigationBar.appearance().scrollEdgeAppearance = appearance
    }
    
    func body(content: Content) -> some View {
        content
    }
}

extension View {
    func navigationSetup() -> some View {
        self.modifier(NavigationBarSetupModifier())
    }
}
