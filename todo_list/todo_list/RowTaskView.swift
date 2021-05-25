//
//  RowTaskView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct RowTaskView: View {
    
    var task: Task
    
    var body: some View {
        VStack {
            HStack {
                StatusView(status: task.completed ? Status.indexCompleted : task.status)
                Spacer()
                Text(task.task)
                    .modifier(Label())
                Spacer()
                CategoryView(category: task.category)
            }
            .padding(.horizontal, 20)
        }
    }
}

struct RowTaskView_Previews: PreviewProvider {
    static var previews: some View {
        RowTaskView(task: Task.dummy)
    }
}
