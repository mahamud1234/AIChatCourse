//
//  ChatsView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/17/26.
//

import SwiftUI

struct ChatsView: View {
    let chats = [
        ("Sarah", "Your stay is confirmed!", "9:41 AM"),
        ("Michael", "Check-in is after 3 PM.", "Yesterday"),
        ("Emma", "Thanks for staying with us.", "Mon")
    ]
    var body: some View {

                List(chats, id: \.0) { chat in
                    HStack(spacing: 12) {
                        Image(systemName: "person.circle.fill")
                            .font(.system(size: 44))
                            .foregroundStyle(.gray)

                        VStack(alignment: .leading, spacing: 4) {
                            Text(chat.0)
                                .font(.headline)
                            Text(chat.1)
                                .font(.subheadline)
                                .foregroundStyle(.secondary)
                        }

                        Spacer()

                        Text(chat.2)
                            .font(.caption)
                            .foregroundStyle(.secondary)
                    }
                    .padding(.vertical, 4)
                }
                .listStyle(.plain)
                .navigationTitle("Chat")
            }
    
}

#Preview {
    NavigationStack {
        ChatsView()
    }
}
