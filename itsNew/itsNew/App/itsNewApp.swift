//
//  itsNewApp.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI
import FirebaseCore

@main
struct itsNewApp: App {
    // register app delegate for Firebase setup
    init() {
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
