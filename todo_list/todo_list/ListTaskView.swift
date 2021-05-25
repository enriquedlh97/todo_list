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
                RowTaskView(task: task)
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
