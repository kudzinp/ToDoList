//
//  ItemModel.swift
//  ToDoList
//
//  Created by Pavel Kudin on 14/01/2025.
//

import Foundation

struct ItemModel: Identifiable {
    let id: String = UUID().uuidString
    let title: String
    let isCompleted: Bool
}
