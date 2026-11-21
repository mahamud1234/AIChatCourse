//
//  SettingsView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/19/26.
//

import SwiftUI

struct SettingsView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(AppState.self) private var appState
    var body: some View {
        NavigationStack {
            List {
                Button {
                    onLogoutPressed()
                } label: {
                    Text("Logout")

                }

            }
        }
        .navigationTitle("Settings")
    }
    func onLogoutPressed() {
        dismiss()
        Task {
            try? await Task.sleep(for: .seconds(1))
            appState.updateViewState(showTabBarView: false)
        }
    }
}

#Preview {
    SettingsView()
        .environment(AppState())
}
