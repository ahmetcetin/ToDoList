//
//  ToDoListView.swift
//  ToDoList
//
//  Created by Ahmet Cetin on 31/12/2022.
//

import SwiftUI

struct ToDoListView: View {
  var toDos = ["Learn Swift",
               "Build Apps",
               "Take A Vacation",
               "Change The World",
               "Bring The Awesome"]

  var body: some View {
    NavigationStack {
      List {
        ForEach(toDos, id: \.self) { todo in
          NavigationLink {
            DetailView(passedValue: todo)
          } label: {
            Text(todo)
          }
        }
      }
      .navigationTitle("To Do List")
      .navigationBarTitleDisplayMode(.automatic)
      .listStyle(.plain)
    }
  }
}

struct ToDoListView_Previews: PreviewProvider {
  static var previews: some View {
    ToDoListView()
  }
}
