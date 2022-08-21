//
//  Post+Author+Story.swift
//  Instagram
//
//  Created by Luca Berardinelli 
//

import UIKit

struct Post {
    let description: String
    let image: UIImage
    let author: Author
}

struct Author {
    let nickname: String
    let image: UIImage
}

struct Story {
    let author: Author
    let image: UIImage
}


#if DEBUG
extension Post {
    static func mocks() -> [Post] {
        [
            Post(
                description: "Ut enim ad minima veniam, quis nostrum exercitationem ullam corporis suscipit laboriosam, nisi ut aliquid ex ea commodi consequatur?",
                image: #imageLiteral(resourceName: "post5"),
                author: Author(nickname: "Tahlia", image: #imageLiteral(resourceName: "author7"))),
            Post(
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                image: #imageLiteral(resourceName: "post4"),
                author: Author(nickname: "Anna", image: #imageLiteral(resourceName: "author10"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post2"),
                author: Author(nickname: "Sean", image: #imageLiteral(resourceName: "author6"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post7"),
                author: Author(nickname: "Elly", image: #imageLiteral(resourceName: "author9"))),
            Post(
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                image: #imageLiteral(resourceName: "post2"),
                author: Author(nickname: "Mike", image: #imageLiteral(resourceName: "author1"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post9"),
                author: Author(nickname: "Sara", image: #imageLiteral(resourceName: "author3"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post8"),
                author: Author(nickname: "Samantha", image: #imageLiteral(resourceName: "author5"))),
            Post(
                description: "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                image: #imageLiteral(resourceName: "post4"),
                author: Author(nickname: "Susan", image: #imageLiteral(resourceName: "author8"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post6"),
                author: Author(nickname: "Lidia", image: #imageLiteral(resourceName: "author4"))),
            Post(
                description: "Quis autem vel eum iure reprehenderit qui in ea voluptate velit esse quam nihil molestiae consequatur.",
                image: #imageLiteral(resourceName: "post7"),
                author: Author(nickname: "Lilly", image: #imageLiteral(resourceName: "author2")))

        ]
    }
}


extension Story {
    static func mocks() -> [Story] {
        [
            .init(author: Author(nickname: "Tahlia", image: #imageLiteral(resourceName: "author7")), image:  #imageLiteral(resourceName: "post2")),
            .init(author: Author(nickname: "Lidia", image: #imageLiteral(resourceName: "author4")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Susan", image: #imageLiteral(resourceName: "author8")), image:  #imageLiteral(resourceName: "post3")),
            .init(author: Author(nickname: "Samantha", image: #imageLiteral(resourceName: "author5")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Sara", image: #imageLiteral(resourceName: "author3")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Mike", image: #imageLiteral(resourceName: "author1")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Elly", image: #imageLiteral(resourceName: "author9")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Sean", image: #imageLiteral(resourceName: "author6")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Anna", image: #imageLiteral(resourceName: "author10")), image:  #imageLiteral(resourceName: "post1")),
            .init(author: Author(nickname: "Lilly", image: #imageLiteral(resourceName: "author2")), image:  #imageLiteral(resourceName: "post1")),
        ]
    }
}
#endif
