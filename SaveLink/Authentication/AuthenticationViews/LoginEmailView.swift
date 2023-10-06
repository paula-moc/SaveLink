//
//  LoginEmailView.swift
//  SaveLink
//
//  Created by Paula Morales on 03/10/23.
//

import SwiftUI


struct LoginEmailView: View {
    @ObservedObject var authenticationViewModel: AuthenticationViewModel
    @State var textFieldEmail: String = ""
    @State var textFielPassword: String = ""
    
    var body: some View {
        VStack {
            DismissView()
                .padding(.top, 8)
            Group {
                Text ("Bienvenido de nuevo a")
                Text ("N-FIT")
                    .bold()
                    .underline()
            }
            .padding(.horizontal,8)
            .multilineTextAlignment(.center)
            .font(.largeTitle)
            .tint(.primary)
            Group {
                Text("Loguéate de nuevo para poder acceder a todos tus links.")
                    .tint(.secondary)
                    .multilineTextAlignment(.center)
                    .padding(.top, 2)
                    .padding(.bottom, 2)
                TextField("Añade tu correo electrónico", text: $textFieldEmail)
                TextField("Contraseña", text: $textFielPassword)
                Button("Login") {
                    authenticationViewModel.login(email: textFieldEmail,
                                                  password: textFielPassword)
                }
                .padding(.top, 18)
                .buttonStyle(.bordered)
                .tint(.blue)
                if let messageError = authenticationViewModel.messageError {
                    Text(messageError)
                        .bold()
                        .font(.body)
                        .foregroundColor(.red)
                        .padding(.top, 20)
                }

            }
            .textFieldStyle(.roundedBorder)
            .padding(.horizontal, 64)
            Spacer()
        }
        
    }
}

    

struct LoginEmailView_Previews: PreviewProvider {
    static var previews: some View {
        LoginEmailView(authenticationViewModel: AuthenticationViewModel())
    }
}
