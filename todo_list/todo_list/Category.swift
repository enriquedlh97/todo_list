//
//  Category.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct Category {
    
    var category: String
    var image: Image
    
}


extension Category {
    static let fun = Category(category: "Fun", image: Image("fun"))
    static let activity = Category(category: "Activity", image: Image("activity"))
    static let quiz = Category(category: "Quiz", image: Image("quiz"))
    static let sports = Category(category: "Sports", image: Image("sports"))
    static let categories = [Category.fun, Category.activity, Category.quiz, Category.sports]
}
