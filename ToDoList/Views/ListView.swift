//
//  ListView.swift
//  ToDoList
//
//  Created by Pavel Kudin on 08/01/2025.
//

import SwiftUI

struct ListView: View {

    var items: [String] = [
        "Item1",
        "Item2",
        "Item3"
    ]

    var body: some View {
        List {
            ForEach(items, id: \.self) { item in
                ListRowView(title: item)
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
