//
//  BusaBorrowApp.swift
//  BusaBorrow
//
//  Created by Tyler Heslop.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth

class AppDelegate: NSObject, UIApplicationDelegate {
  func application(_ application: UIApplication,
                   didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey : Any]? = nil) -> Bool {
    FirebaseApp.configure()

    return true
  }
}

@main
struct BusaBorrowApp: App {
    // register app delegate for Firebase setup
    // TODO retrieve data from firebase instead of
    // using hardcoded data file
    @UIApplicationDelegateAdaptor(AppDelegate.self) var delegate
    var data = Data()
    var body: some Scene {
        WindowGroup {
            NavigationView{
                ContentView().environmentObject(data)
            }
        }
    }
}
