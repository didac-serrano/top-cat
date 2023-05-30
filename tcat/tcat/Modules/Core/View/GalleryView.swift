//
//  GalleryView.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 29/5/23.
//

import SwiftUI

struct GalleryView: View {
    
    //MARK: - Attributes
    @StateObject var viewModel = GalleryViewModel()
    
    /** navigation related */
    @Binding var path: [String]
    
    init(path: Binding<[String]>) {
        self._path = path
    }
    
    //MARK: - Body
    var body: some View {
        ZStack {
            background
            content
            if viewModel.serviceError {
                errorBanner
            }
        }
        .navigationTitle(path.last ?? "")
        .accentColor(.black)
        .navigationSetup()
    }
    
    var background: some View {
        GeometryReader { reader in
            LinearGradient(
                colors: [.indigo, .pink],
                startPoint: .topLeading,
                endPoint: .bottomTrailing)
            .frame(height: reader.safeAreaInsets.top, alignment: .top)
            .ignoresSafeArea()
        }
    }
    
    var content: some View {
        VStack {
            List(viewModel.images) { item in
                Text(item.title)
                .onAppear {
                    viewModel.isMoreContentNeeded(currentItem: item)
                }
            }
        }
    }
    
    var errorBanner: some View {
        VStack {
            Text("너희들을 굴복시키려면 무엇이 필요한가\n우리는 힘을 환영한다 우리는 힘을 환영한다")
                .font(.headline)
                .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width,
               height: 64,
               alignment: .center)
        .background(.gray)
    }
}
