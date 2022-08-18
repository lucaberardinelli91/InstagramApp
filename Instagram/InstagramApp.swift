//
//  InstagramApp.swift
//  Instagram
//
//  Created by Luca Berardinelli on 15/08/22.
//

import SwiftUI

@main
struct InstagramApp: App {
    var body: some Scene {
        WindowGroup {
            ContentView(feed: Post.mocks(), stories: Story.mocks())
        }
    }
}
