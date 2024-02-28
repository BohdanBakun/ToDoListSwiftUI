//
//  ItemModel.swift
//  ToDoListSwiftUI
//
//  Created by Богдан Бакун on 27.02.2024.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
