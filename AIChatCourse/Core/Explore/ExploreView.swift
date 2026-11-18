//
//  ExploreView.swift
//  AIChatCourse
//
//  Created by Md Mahamudul Islam on 11/17/26.
//

import SwiftUI

struct ExploreView: View {
    var body: some View {
        List {
            Text("Detroit")
            Text("Chicago")
            Text("New York")
        }
        .navigationTitle("Explore")
    }
}

#Preview {
    NavigationStack {
        ExploreView()
    }
}


/*
 struct ExploreView: View {
     var body: some View {
         List {
             Text("Detroit")
             Text("Chicago")
             Text("New York")
         }
         .navigationTitle("Explore")
     }
 }

 #Preview {
     NavigationStack {
         ExploreView()
     }
 }
 */
