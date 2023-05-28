//
//  SplashView.swift
//  tcat
//
//  Created by Dídac Serrano i Segarra on 28/5/23.
//

import SwiftUI

struct SplashView: View {
    
    let viewModel: LandingViewModel
    
    init(viewModel: LandingViewModel) {
        self.viewModel = viewModel
    }
    
    var body: some View {
        
        VStack {
            Text("made by dak")
                .font(.largeTitle)
                .foregroundColor(.white)
        }
        .frame(width: UIScreen.main.bounds.width,
               height: UIScreen.main.bounds.height,
               alignment: .center)
        .background(.indigo)
    }
}
