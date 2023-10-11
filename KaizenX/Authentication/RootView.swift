//
//  RootView.swift
//  KaizenX
//
//  Created by Cristi Sandu on 12.10.2023.
//

import SwiftUI

struct RootView: View {
    @State private var showSignInView: Bool = false
    
    var body: some View {
        
        ZStack {
            NavigationStack {
               SettingsView(showSigningView: $showSignInView)
            }
        }
        .onAppear {
            let authUser = try? AuthenticationManager.shared.getAuthenticatedUser()
            self.showSignInView = authUser == nil 
        }
        .fullScreenCover(isPresented: $showSignInView) {
            NavigationStack{
                AuthenticationView()
            }
        }
    }
}

#Preview {
    RootView()
}
