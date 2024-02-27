//
//  ListView.swift
//  ToDoListSwiftUI
//
//  Created by Богдан Бакун on 27.02.2024.
//

import SwiftUI

struct ListView: View {
    
    @State var items: [String] = [
        "This is the first title!",
        "This is the second!",
        "Third!"
    ]
    
    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
            }
        }
        .listStyle(.plain)
        .navigationTitle("ToDo List 📝")
        .toolbar {
            ToolbarItem(placement: .topBarLeading) {
                Button("Edit Button") {
                    
                }
            }
            ToolbarItem(placement: .topBarTrailing) {
                NavigationLink("Add", destination: AddView())
            }
        }
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}


