//
//  AuthService.swift
//  Instagram
//
//  Created by akhil on 18/03/24.
//

import Foundation
import FirebaseAuth
class AuthService {
    
    @Published var userSession: FirebaseAuth.User?
    static let shared = AuthService()
    init() {
        self.userSession = Auth.auth().currentUser
    }
    func login(withEmail email: String, password: String) async throws {
        
    }
    
    func createUser(withEmail email: String, password: String, username: String) async throws {
        
    }
    
    func loadUserData() async throws {
        
    }
    
    func signOut() {
        
    }
}
