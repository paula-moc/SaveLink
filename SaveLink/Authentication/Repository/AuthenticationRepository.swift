//
//  AuthenticationRepository.swift
//  SaveLink
//
//  Created by Paula Morales on 04/10/23.
//

import Foundation

final class AuthenticationRepository {
    private let authenticationFirebaseDatasource: AutenticationFirebaseDatasource
    
    init(authenticationFirebaseDatasource: AutenticationFirebaseDatasource = AutenticationFirebaseDatasource()) {
        self.authenticationFirebaseDatasource = authenticationFirebaseDatasource
    }
    
    func getCurrentUser() -> User? {
        authenticationFirebaseDatasource.getCurrentUser()
    }
    
    func createNewUser(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        authenticationFirebaseDatasource.createNewUser(email: email,
                                                       password: password,
                                                       completionBlock: completionBlock)
  }
    
    func login(email: String, password: String, completionBlock: @escaping (Result<User, Error>) -> Void) {
        authenticationFirebaseDatasource.login(email: email,
                                                       password: password,
                                                       completionBlock: completionBlock)
  }

    func logout() throws {
        try authenticationFirebaseDatasource.logout()
    }
}

