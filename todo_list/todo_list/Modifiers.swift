//
//  Modifiers.swift
//  todo_list
//
//  Created by Enrique Diaz de Leon Hicks on 5/25/21.
//

import SwiftUI

struct Title: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Baloo2-Bold", size: 24))
            .foregroundColor(Color("SwanWhite"))
    }
}

struct Subtitle: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Baloo2-Bold", size: 20))
            .foregroundColor(Color("ElectronBlue"))
    }
}

struct Label: ViewModifier {
    func body(content: Content) -> some View {
        content
            .font(.custom("Baloo2-Regular", size: 20))
            .foregroundColor(Color("ElectronBlue"))
    }
}
