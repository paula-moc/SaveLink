//
//  HomeView.swift
//  SaveLink
//
//  Created by Paula Morales on 05/10/23.
//

import SwiftUI

struct HomeView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    
    var body: some View {
        NavigationView {
            VStack {
                Text("Bienvenido \(authenticationViewModel.user?.email ?? "No user")")
                    .padding(.top, 32)
                Spacer()
            }
            .navigationBarTitleDisplayMode(.inline)
            .navigationTitle("Home")
            .toolbar {
                 Button("Logout") {
                authenticationViewModel.logout()
            }
         }
       }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView(authenticationViewModel: AuthenticationViewModel())
    }
}
