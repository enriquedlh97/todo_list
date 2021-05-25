//
//  StatusView.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct StatusView: View {
    
    var status: Int
    
    var body: some View {
        VStack {
            Image(systemName: Status.images[status].image)
                .font(.title)
                .foregroundColor(Status.images[status].color)
        }
    }
}

struct StatusView_Previews: PreviewProvider {
    static var previews: some View {
        StatusView(status: 0)
    }
}
