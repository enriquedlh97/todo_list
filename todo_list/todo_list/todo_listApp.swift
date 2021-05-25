//
//  todo_listApp.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/24/21.
//

import SwiftUI
import Firebase

@main
struct todo_listApp: App {
    
    init() {
        // Makes sure firebase is working on execution
        FirebaseApp.configure()
    }
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
