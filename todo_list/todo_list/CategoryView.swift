//
//  CategoryView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct CategoryView: View {
    
    var category: Int
    
    var body: some View {
        VStack {
            Category.categories[category].image
                .resizable()
                .scaledToFit()
                .frame(width: 40)
        }
    }
}

struct CategoryView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryView(category: 0)
    }
}
