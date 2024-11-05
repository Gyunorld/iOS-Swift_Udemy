//
//  ContentView.swift
//  HackerNews
//
//  Created by 김민규 on 11/5/24.
//

import SwiftUI

struct ContentView: View {
    
    // ObservableObject를 감지
    @ObservedObject var networkManager = NetworkManager()
    
    var body: some View {
        NavigationView{
            List(networkManager.posts) { post in
                NavigationLink(destination:DetailView(url: post.url)) {
                    HStack {
                        Text(String(post.points))
                        Text(post.title)
                    }
                }
            }
            .navigationTitle("Hacker News")
        }
        .onAppear {
            networkManager.fetchData()
        }
    }
}

#Preview {
    ContentView()
}

