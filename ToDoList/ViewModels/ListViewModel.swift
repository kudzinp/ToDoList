//
//  ListViewModel.swift
//  ToDoList
//
//  Created by Pavel Kudin on 28/01/2025.
//

import Foundation

class ListViewModel: ObservableObject {
    
    @Published var items: [ItemModel] = []
    
    init() {
        getItems()
    }
    
    func getItems() {
        let newItems = [
            ItemModel(title: "First", isCompleted: true),
            ItemModel(title: "Second", isCompleted: false),
            ItemModel(title: "Third", isCompleted: true)
        ]
        items.append(contentsOf: newItems)
    }
    
    func addItem(title: String) {
        let newItem = ItemModel(title: title, isCompleted: false)
        items.append(newItem)
    }
    
    func deleteItem(IndexSet: IndexSet) {
        items.remove(atOffsets: IndexSet)
    }
    
    func moveItem(from: IndexSet, to: Int) {
        items.move(fromOffsets: from, toOffset: to)
    }
}
