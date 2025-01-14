//
//  ListView.swift
//  ToDoList
//
//  Created by Pavel Kudin on 08/01/2025.
//

import SwiftUI

struct ListView: View {

    @State var items: [ItemModel] = [
        ItemModel(title: "First", isCompleted: true),
        ItemModel(title: "Second", isCompleted: false),
        ItemModel(title: "Third", isCompleted: true)
    ]

    var body: some View {
        List {
            ForEach(items) { item in
                ListRowView(item: item)
            }
        }
        .listStyle(PlainListStyle())
        .navigationTitle("ToDo List 📝")
        .navigationBarItems(
            leading: EditButton(),
            trailing: NavigationLink("Add", destination: AddView())
        )
    }
}

#Preview {
    NavigationView {
        ListView()
    }
}
