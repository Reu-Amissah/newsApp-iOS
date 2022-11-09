//
//  itsNewApp.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI
import Firebase


final class AppDelegate: NSObject, UIApplicationDelegate {
    func application (_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]? = nil) -> Bool{
        
        FirebaseApp.configure()
        return true
    }
}

@main
struct itsNewApp: App {
    
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    
    //configures a default Firebase app for you
//    init() {
//        FirebaseApp.configure()
//    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
