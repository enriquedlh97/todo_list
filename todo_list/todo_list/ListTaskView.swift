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
            .navigationBarTitle("Tasks", displayMode: .inline)
            .navigationBarColor(UIColor(named: "ElectronBlue"), UIColor(named: "SwanWhite"))
                .toolbar {
                    // Es para poner el título
                    ToolbarItem(placement: .principal) {
                        Text("Tasks")
                            .font(.title)
                            .foregroundColor(Color("SwanWhite"))
                    }
                }
        }
    }
}

struct ListTaskView_Previews: PreviewProvider {
    static var previews: some View {
        ListTaskView()
    }
}
