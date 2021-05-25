//
//  Status.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct Status {
    
    var image: String
    var text: String
    var color: Color
    
}

extension Status {
    static let normal = Status(image: "pencil.circle.fill", text: "Normal task", color: Color("ElectronBlue"))
    static let special = Status(image: "exclamationmark.circle.fill", text: "Special task", color: Color("FluorescentRed"))
    static let highPriority = Status(image: "flag.circle.fill", text: "High Priority Task", color: Color("SpicedButternut"))
    static let lowPriority = Status(image: "arrow.down.circle.fill", text: "Low Priority", color: Color("C64Purple"))
    static let completed = Status(image: "checkmark.circle.fill", text: "Task finished", color: Color("Emerald"))
    static let deleteTask = Status(image: "trash.circle.fill", text: "Delete Task", color: Color("FluorescentRed"))
    static let images = [
        Status.normal,
        Status.special,
        Status.highPriority,
        Status.lowPriority,
        Status.completed
    ]
    static let indexCompleted = 4
}
