//
//  ContainerView.swift
//  KaizenX
//
//  Created by Cristi Sandu on 10.10.2023.
//

import SwiftUI

struct ContainerView: View {
    
    @State private var isSplashScreenView = true
    
    var body: some View {
        if !isSplashScreenView {
            RootView()
        }
        else {
            SplashScreenView(isPresented: $isSplashScreenView)
        }
    }
}

#Preview {
    ContainerView()
}
