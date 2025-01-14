//
//  ListRowView.swift
//  ToDoList
//
//  Created by Pavel Kudin on 08/01/2025.
//

import SwiftUI

struct ListRowView: View {

    let item: ItemModel

    var body: some View {
        HStack {
            Image(systemName: item.isCompleted ? "checkmark.circle" : "circle")
                .foregroundColor(item.isCompleted ? .green : .red)
            Text(item.title)
            Spacer()
        }
        .font(.title2)
        .padding(.vertical, 8)
    }
}

#Preview(traits: .sizeThatFitsLayout) {
    
    var item1 = ItemModel(title: "Item 1", isCompleted: true)
    
    ListRowView(item: item1)
}

#Preview(traits: .sizeThatFitsLayout) {
    
    var item2 = ItemModel(title: "Item 2", isCompleted: false)
    
    ListRowView(item: item2)
}
