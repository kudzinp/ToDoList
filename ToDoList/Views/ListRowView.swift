//
//  ListRowView.swift
//  ToDoList
//
//  Created by Pavel Kudin on 08/01/2025.
//

import SwiftUI

struct ListRowView: View {

    let title: String

    var body: some View {
        HStack {
            Image(systemName: "checkmark.circle")
            Text(title)
            Spacer()
        }
    }
}

#Preview {
    ListRowView(title: "ItemName")
}
