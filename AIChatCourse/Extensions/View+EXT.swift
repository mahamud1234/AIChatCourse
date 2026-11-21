//
//  View+EXT.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/18/26.
//

import SwiftUI

extension View {
    func callToActionButton() -> some View {
        self
            .bold()
            .font(.headline)
            .foregroundColor(.white)
            .frame(maxWidth: .infinity)
            .frame(height: 50)
            .background(Color.blue)
            .cornerRadius(10)
    }
}
