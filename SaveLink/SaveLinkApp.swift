//
//  SaveLinkApp.swift
//  SaveLink
//
//  Created by Paula Morales on 02/10/23.
//

import SwiftUI
import Firebase

class AppDelegate: NSObject, UIApplicationDelegate {
 func application(_ application: UIApplication,
  didFinishLaunchingWithOptions launchOptions:
             [UIApplication.LaunchOptionsKey : Any]?) -> Bool {
       
     FirebaseApp.configure()
      return true
      }
    }
    


@main
struct SaveLinkApp: App {
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    @StateObject var authenticationViewModel = AuthenticationViewModel()
    
    
    var body: some Scene {
        WindowGroup {
            if let user = authenticationViewModel.user {
                HomeView(authenticationViewModel: authenticationViewModel)
            } else {
                
                AuthenticationView(authenticationViewModel: authenticationViewModel)
            }
        }
    }
}
