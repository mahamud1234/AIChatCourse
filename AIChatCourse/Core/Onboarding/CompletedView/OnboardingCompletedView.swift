//  OnboardingView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/18/26.
//

import SwiftUI

struct OnboardingCompletedView: View {
    @Environment(AppState.self) private var root
    var body: some View {
        VStack {
            Text("Onboarding completed")
                .frame(maxHeight: .infinity)
            Button {
                onFinishButtonTapped()
            } label: {
                Text("finish".capitalized)
                    .callToActionButton()
            }
        }
        .padding()
    }

    func onFinishButtonTapped() {
        root.updateViewState(showTabBarView: true)
    }
}

#Preview {
    OnboardingCompletedView()
        .environment(AppState())
}
