//
//  AddEditTaskView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct AddEditTaskView: View {
    
    @State var task: Task
    var mode: AddEditTask
    
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct AddEditTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditTaskView(task: Task.dummy, mode: .addTask)
    }
}
