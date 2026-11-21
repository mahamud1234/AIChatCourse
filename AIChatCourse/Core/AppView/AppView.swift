//
//  AppView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/14/26.
//

import SwiftUI

struct AppView: View {
    @State var appState: AppState = AppState()
    var body: some View {
        AppViewBuilder(
            showTabBar: appState.showTabBar,
            tabbarView: {
                TabBarView()
            },
            onboardingView: {
                WelcomeView()
            }
        )
        .environment(appState)
    }
}

#Preview("App View - Tabbar"){
    AppView(appState: AppState(showTabBar: true))
}
#Preview("App View - Onboarding"){
    AppView(appState: AppState(showTabBar: false))
}
