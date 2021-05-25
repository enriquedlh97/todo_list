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
            ZStack {
                List(tasks.tasks) { task in
                    RowTaskView(task: task)
                }
                VStack {
                    Spacer()
                    NavigationLink(destination: AddEditTaskView(tasks: tasks, task: Task.dummy, mode: .addTask), label: {
                        Image(systemName: "plus.circle.fill")
                            .font(.system(size: 60.0))
                            .foregroundColor(Color("Emerald"))
                            .shadow(color: Color.black.opacity(0.3),
                                    radius: 1,
                                    x: 1,
                                    y: 1)
                            .padding(20)
                    })
                }
            }
            .listStyle(PlainListStyle())
            .navigationBarTitle("Tasks", displayMode: .inline)
            .navigationBarColor(UIColor(named: "ElectronBlue"), UIColor(named: "SwanWhite"))
            .toolbar {
                // Es para poner el título
                ToolbarItem(placement: .principal) {
                    Text("Tasks")
                        .modifier(Title())
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
