//
//  AddEditTaskView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct AddEditTaskView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @StateObject var tasks: TaskModel
    @State var task: Task
    var mode: AddEditTask
    @State var alertTask: Bool = false
    
    var body: some View {
        VStack {
            HStack {
                Text("Task")
                    .modifier(Subtitle())
                TextField("Task", text: $task.task)
                    .textFieldStyle(RoundedBorderTextFieldStyle())
                    .modifier(Label())
            }
            Text(Status.images[task.status].text)
                .modifier(Subtitle())
            HStack {
                ForEach(0..<Status.images.count-1) { index in
                    Image(systemName: Status.images[index].image)
                        .font(.system(size: 40))
                        .foregroundColor(Status.images[index].color)
                        .padding(10)
                        .grayscale(self.task.status == index ? 0 : 0.99 )
                        .onTapGesture {
                            task.status = index
                        }
                }
            }
            Text("Category: \(Category.categories[task.category].category)")
                .modifier(Subtitle())
            HStack {
                ForEach(0..<Category.categories.count) { index in
                    Category.categories[index].image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 60)
                        .padding(10)
                        .grayscale(self.task.category == index ? 0 : 0.99 )
                        .onTapGesture {
                            self.task.category = index
                        }
                }
            }
            DatePicker("Enter due date", selection: $task.dueDate, displayedComponents: .date)
                .modifier(Subtitle())
                .padding(20)
            Toggle(isOn: $task.completed) {
                Text("Task terminada")
                    .modifier(Subtitle())
            }
            .padding([.trailing,.leading],80)
            .padding([.top, .bottom],10)
            Button(action: {
                if task.task == "" {
                    alertTask = true
                } else {
                    if mode == .addTask {
                        task.creationDate = Date()
                        tasks.addData(task: task)
                    } else {
                        tasks.updateData(task: task)
                    }
                    presentationMode.wrappedValue.dismiss()
                }
            }) {
                Text(mode == .addTask ? "Add" : "Edit")
                    .foregroundColor(Color.white)
                    .modifier(Title())

            }
            .frame(width: 120, height:50) .background(RoundedRectangle(cornerRadius: 10   , style: .continuous))
            .cornerRadius(20)
            .foregroundColor(Color("ElectronBlue"))
            .padding(20)
        }
        .navigationBarTitle(mode == .addTask ? "Add Task" : "Edit Task", displayMode: .inline)
        .navigationBarColor(UIColor(named: "ElectronBlue"), UIColor(named: "SwanWhite"))
        .toolbar {
            // Es para poner el título
            ToolbarItem(placement: .principal) {
                Text(mode == .addTask ? "Add Task" : "Edit Task")
                    .modifier(Title())
                    .foregroundColor(Color("SwanWhite"))
            }
        }
    }
}

struct AddEditTaskView_Previews: PreviewProvider {
    static var previews: some View {
        AddEditTaskView(task: Task.dummy, mode: .addTask)
    }
}
