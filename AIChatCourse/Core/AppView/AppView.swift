//
//  AppView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/14/26.
//

import SwiftUI

// tabbar - sign in
// onboarding - signed out

struct AppView: View {
    @AppStorage("showTabBarView") var showTabBar: Bool = false
    var body: some View {
        
        AppViewBuilder(
            showTabBar: showTabBar,
            tabbarView: {
                ZStack {
                    Color.blue.ignoresSafeArea()
                    Text("Tabbar")
                }
            },
            onboardingView: {
                ZStack {
                    Color.green.ignoresSafeArea()
                    Text("Onboarding")
                }
            }
        )
    }
}

#Preview("App View - Tabbar"){
    AppView(showTabBar: false)
}
#Preview("App View - Onboarding"){
    AppView(showTabBar: true)
}
