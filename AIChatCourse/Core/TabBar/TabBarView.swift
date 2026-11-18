//
//  TabBarView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/17/26.
//

import SwiftUI

struct TabBarView: View {
    var body: some View {
        TabView {
            Tab("Explore", systemImage: "magnifyingglass") {
                NavigationStack {
                    ExploreView()
                }
            }
            Tab("Chats", systemImage: "bubble.left.and.bubble.right") {
                NavigationStack {
                    ChatsView()
                }
            }
            
            Tab("Profile", systemImage: "person") {
                NavigationStack {
                    ProfileView()
                }
            }
        }
    }
}

#Preview {
    TabBarView()
}
