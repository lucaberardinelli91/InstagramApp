//
//  StoryView.swift
//  Instagram
//
//  Created by Luca Berardinelli on 18/08/22.
//

import SwiftUI

struct StoryView: View {
    
    let stories: [Story]
    
    var body: some View {
        HStack {
            ForEach(stories, id: \.author.nickname, content: { story in
                VStack {
                    ZStack {
                        Circle()
                            .fill(LinearGradient(
                                gradient: Gradient(colors: [.red, .purple,  .orange]),
                                startPoint: .topLeading,
                                endPoint: .bottomTrailing))
                            .frame(width: 67, height: 67)
                        
                        CircleImage(image: story.author.image, width: 60, height: 60)
                    }
                    
                    Text(story.author.nickname)
                        .font(.caption)
                }
            })
        }
    }
}

struct StoryView_Previews: PreviewProvider {
    static var previews: some View {
        StoryView(stories: Story.mocks())
    }
}
