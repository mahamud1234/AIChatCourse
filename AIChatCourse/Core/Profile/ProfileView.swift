//
//  ProfileView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/17/26.
//

import SwiftUI

struct ProfileView: View {
    @State private var isPresented: Bool = false
    var body: some View {
        List {
            Section {
                HStack(spacing: 16) {
                    Image(systemName: "person.circle.fill")
                        .font(.system(size: 60))
                        .foregroundStyle(.gray)
                    
                    VStack(alignment: .leading, spacing: 4) {
                        Text("Mahamudul")
                            .font(.title3)
                            .bold()
                        Text("Show profile")
                            .font(.subheadline)
                            .foregroundStyle(.secondary)
                    }
                }
                .padding(.vertical, 8)
            }
            
            Section("Settings") {
                Label("Personal information", systemImage: "person")
                Label("Payments", systemImage: "creditcard")
                Label("Notifications", systemImage: "bell")
            }
            
            Section {
                Button("Log out", role: .destructive) { }
            }
        }
        .navigationTitle("Profile")
        .toolbar {
            ToolbarItem(placement: .topBarTrailing) {
                settingsButton
            }
        }
        .sheet(isPresented: $isPresented) {
            Text("Settings")
        }
    }
    
    private var settingsButton: some View {
        Button {
            onSettingsButtonPressed()
        } label: {
            Image(systemName: "gear")
        }
    }
    
    private func onSettingsButtonPressed() {
        isPresented = true
    }
}


#Preview {
    NavigationStack {
        ProfileView()
    }
}
