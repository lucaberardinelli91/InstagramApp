//
//  PostView.swift
//  Instagram
//
//  Created by Luca Berardinelli 
//

import SwiftUI

struct PostView: View {
    
    let post: Post
    
    var body: some View {
        VStack(alignment: .leading) {
            HStack {
                CircleImage(image: post.author.image, width: 35, height: 35)
                VStack(alignment: .leading) {
                    Text(post.author.nickname)
                        .fontWeight(.bold)
                        .font(.footnote)
                    Text("Italy")
                        .font(.caption)
                }
            }
            Image(uiImage: post.image)
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(height: 200)
                .clipped()
            HStack {
                Group {
                    Image(systemName: "heart")
                    Image(systemName: "bubble.right")
                    Image(systemName: "paperplane")
                }
                .padding(.trailing, 5)
                Spacer()
                Image(systemName: "bookmark")
            }
            .font(.callout)
            .padding([.top, .bottom], 6)
            
            Group {
                 Text(post.author.nickname)
                    .fontWeight(.bold)
                +
                Text(" ")
                +
                Text(post.description)
            }
            .font(.caption)
            .lineLimit(2)
            
        }
    }
}

struct PostView_Previews: PreviewProvider {
    static var previews: some View {
        PostView(post: Post.mocks()[0])
            .previewLayout(.fixed(width: 400, height: 400))
            .padding()
    }
}
