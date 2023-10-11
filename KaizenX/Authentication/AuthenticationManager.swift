//
//  AuthenticationManager.swift
//  KaizenX
//
//  Created by Cristi Sandu on 12.10.2023.
//

import Foundation
import FirebaseAuth

struct AuthDataResultModel {
    let uid: String
    let email: String?
    let photoURL: String?
    
    init(user:User) {
        self.uid = user.uid
        self.email = user.email
        self.photoURL = user.photoURL?.absoluteString
    }
}

final class AuthenticationManager {
    static let shared = AuthenticationManager()
    private init() { }
    
    func createUser(email:String, password:String) async throws -> AuthDataResultModel{
        let authDataResult = try await Auth.auth().createUser(withEmail: email, password: password)
        
        return AuthDataResultModel(user: authDataResult.user)
    }
}