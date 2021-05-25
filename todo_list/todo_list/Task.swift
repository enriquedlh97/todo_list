//
//  Task.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI
import FirebaseFirestoreSwift

struct Task: Identifiable, Codable {
    // @Document generates an automatic id whenever a new document is generated
    @DocumentID var id: String?
    var task: String
    var category: Int
    var status: Int
    var completed: Bool
    var creationDate: Date
    var dueDate: Date
    
    enum CodingKeys: String, CodingKey {
        case id
        case task
        case category
        case status
        case completed
        case creationDate
        case dueDate
        
    }
    
}

extension Task {
    public static var dummy = [
        Task(task: "Task 1", category: 0, status: 0, completed: false, creationDate: Date(), dueDate: Date())
    ]
}
