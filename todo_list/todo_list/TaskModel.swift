//
//  TaskModel.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI
import FirebaseFirestore

class TaskModel: ObservableObject {
    
    @Published var tasks = [Task]()
    private let db = Firestore.firestore()
    
    init() {
        
        fetchData()
        
    }
    
    // Función para crear el Listener que va a actualizar los datos de la base de datos FireStore en nuestra App
    func fetchData() {
        db.collection("Todos").order(by: "dueDate").addSnapshotListener { (querySnapshot, error) in
            guard let documents = querySnapshot?.documents else {
                print("No documents")
                return
            }

            self.tasks = documents.compactMap { queryDocumentSnapshot -> Task? in
                return try? queryDocumentSnapshot.data(as: Task.self)
            }
        }
    }

    // Función para agregar datos a la base de datos
    func addData(task: Task) {
        do {
            let _ = try db.collection("App11-Todo").addDocument(from: task)
        }
        catch {
            print(error)
        }
    }

    // Función para actualizar datos en la base de datos
    func updateData(task: Task) {
        if let taskID = task.id {
            do {
                try db.collection("App11-Todo").document(taskID).setData(from: task)
            }
            catch {
                print("There was an error while trying to update a task \(error.localizedDescription).")
            }
        }
    }

    // Función para borrar datos de la base de datos
    func removeData(task: Task) {
        if let taskID = task.id {
            db.collection("App11-Todo").document(taskID).delete { (error) in // (1)
                if let error = error {
                    print("Error removing document: \(error.localizedDescription)")
                }
            }
        }
    }
    
}

