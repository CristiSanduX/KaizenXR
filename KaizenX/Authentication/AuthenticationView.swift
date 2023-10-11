//
//  AuthenticationView.swift
//  KaizenX
//
//  Created by Cristi Sandu on 10.10.2023.
//

import SwiftUI

struct AuthenticationView: View {
    var body: some View {
        VStack {
            NavigationLink {
                SignInEmailView()
            } label: {
                Text("Sign in with email")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: .infinity)
                    .background(Color.darkRed)
                    .cornerRadius(10)
            }
            Spacer()
        }
        .padding()
        .navigationTitle("Sign in")
        
    }
}

#Preview {
    NavigationStack {
        AuthenticationView()
    }
}
