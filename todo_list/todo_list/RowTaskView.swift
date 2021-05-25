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
                StatusView(status: task.status)
                Text(task.task)
                    .modifier(Label())
                CategoryView(category: task.category)
            }
        }
    }
}

struct RowTaskView_Previews: PreviewProvider {
    static var previews: some View {
        RowTaskView(task: Task.dummy)
    }
}
