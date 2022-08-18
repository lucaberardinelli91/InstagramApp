//
//  ContentView.swift
//  Instagram
//
//  Created by Luca Berardinelli on 15/08/22.
//

import SwiftUI

struct ContentView: View {
    
    init(feed: [Post], stories: [Story]) {
        self.feed = feed
        self.stories = stories
        UINavigationBar.appearance().titleTextAttributes = [.font : UIFont(name: "Arial", size: 25)!]
    }
    
    let feed: [Post]
    let stories: [Story]
    
    var body: some View {
        NavigationView {
            VStack {
                storiesView()
                feedView()
            }
            .navigationBarTitle("Instagram", displayMode: .inline)
            .flipsForRightToLeftLayoutDirection(true)
            .navigationBarItems(trailing: HStack {
                Image(systemName: "plus.app")
                Image(systemName: "heart")
                Image(systemName: "paperplane")
            })
        }
    }
    
    private func storiesView() -> some View {
        ScrollView(.horizontal, showsIndicators: false) {
            StoryView(stories: stories)
                .padding([.top, .leading], 15)
        }
    }
    
    private func feedView() -> some View {
        List(feed, id: \.author.nickname, rowContent: { post in
            PostView(post: post)
                .padding(.bottom, 10)
        })
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(feed: Post.mocks(), stories: Story.mocks())
    }
}
