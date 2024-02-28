//
//  ToDoListSwiftUIApp.swift
//  ToDoListSwiftUI
//
//  Created by Богдан Бакун on 27.02.2024.
//

import SwiftUI

@main
struct ToDoListSwiftUIApp: App {
    
    @StateObject var listViewModel: ListViewModel = ListViewModel()
    
    var body: some Scene {
        WindowGroup {
            NavigationView {
                ListView()
            }
            .navigationViewStyle(.stack)
            .environmentObject(listViewModel)
        }
    }
}
