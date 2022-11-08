//
//  itsNewApp.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI
import Firebase
//import FirebaseCore
//import FirebaseCoreInternal

@main
struct itsNewApp: App {
    //configures a default Firebase app for you
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
