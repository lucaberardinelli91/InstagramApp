//
//  CircleImage.swift
//  Instagram
//
//  Created by Luca Berardinelli 
//

import SwiftUI

struct CircleImage: View {
    
    let image: UIImage
    let width: Double
    let height: Double
    
    var body: some View {
        Image(uiImage: image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: width, height: height)
            .clipped()
            .clipShape(Circle())
    }
}

#if DEBUG
struct CircleImage_Previews: PreviewProvider {
    static var previews: some View {
        CircleImage(image: #imageLiteral(resourceName: "post1"), width: 100, height: 100)
            .previewLayout(.fixed(width: 150, height: 150))
    }
}
#endif

