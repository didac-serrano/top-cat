//
//  SplashView.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import SwiftUI

struct RootView: View {
    
    //MARK: - Attributes
    let viewModel: LandingViewModel
    
    /** navigation related */
    @State private var path: [String] = []
    
    init(viewModel: LandingViewModel) {
        self.viewModel = viewModel
    }
    
    //MARK: - Body
    var body: some View {
        NavigationStack(path: $path) {
            ZStack {
                background
    
                VStack {
                    title
                        .padding(.bottom, 24)
                    subtitle
                        .padding(.bottom, 48)
                        .padding(.horizontal, 30)
                    button
                }
            }
        }
    }
    
    var background: some View {
        LinearGradient(
            colors: [.indigo, .pink],
            startPoint: .topLeading,
            endPoint: .bottomTrailing)
        .ignoresSafeArea()
    }
    
    var title: some View {
        Text("top cat")
            .font(.largeTitle)
            .foregroundColor(.black)
    }
    
    var subtitle: some View {
        Text("this application fetches the top score posts of cats in imgur")
            .font(.headline)
            .multilineTextAlignment(.center )
            .foregroundColor(.black)
    }
    
    var button: some View {
        Button("GOT IT!") {
            /** add new screen name to path */
            path.append("Gallery")
        }
        .font(.headline)
        .padding(.horizontal, 48)
        .padding(.vertical, 12)
        .background(.indigo.opacity(0.8))
        .foregroundColor(.black)
        .clipShape(Capsule())
        
        .navigationDestination(for: String.self) { _ in
            GalleryView(viewModel: viewModel, path: $path)
        }
    }
}
