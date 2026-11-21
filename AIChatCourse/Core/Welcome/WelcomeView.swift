//
//  WelcomeView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/17/26.
//

import SwiftUI

struct WelcomeView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Welcome View")
                    .frame(maxHeight: .infinity)
                NavigationLink {
                    OnboardingCompletedView()
//                    Text("Welcome View")
                } label: {
                    Text("get started".capitalized)
                        .callToActionButton()
                }
            }
            .padding()

        }
    }
}

#Preview {
    WelcomeView()
        .environment(AppState())
}
