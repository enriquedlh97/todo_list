//
//  ContentView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/24/21.
//

import SwiftUI

struct ListTaskView: View {
    
    @ObservedObject var tasks = TaskModel()
    
    var body: some View {
        NavigationView {
            List(tasks.tasks) { task in
                Text(task.task)
            }
        }
    }
}

struct ListTaskView_Previews: PreviewProvider {
    static var previews: some View {
        ListTaskView()
    }
}
