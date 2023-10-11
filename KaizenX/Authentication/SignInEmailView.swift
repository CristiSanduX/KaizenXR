//
//  SignInEmailView.swift
//  KaizenX
//
//  Created by Cristi Sandu on 11.10.2023.
//

import SwiftUI

final class SignInEmailViewModel : ObservableObject {
    @Published var email = ""
    @Published var password = ""
}

struct SignInEmailView: View {
    
    @StateObject private var viewModel = SignInEmailViewModel()
    
    var body: some View {
        VStack {
            TextField("Email...", text: $viewModel.email)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            SecureField("Password...", text: $viewModel.password)
                .padding()
                .background(Color.gray.opacity(0.2))
                .cornerRadius(10)
            
            Button  {
                
            } label: {
                Text("Sign In")
                    .font(.headline)
                    .foregroundStyle(.white)
                    .frame(height: 55)
                    .frame(maxWidth: /*@START_MENU_TOKEN@*/.infinity/*@END_MENU_TOKEN@*/)
                    .background(Color.darkRed)
                    .cornerRadius(10)
            }
            Spacer()
            
            
        }
        .padding()
        .navigationTitle("Sign In With Email")
        
        
        

    }
}

#Preview {
    NavigationStack {
        SignInEmailView()
    }
}
