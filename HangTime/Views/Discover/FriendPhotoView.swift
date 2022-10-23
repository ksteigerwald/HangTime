//
//  FriendPhotoView.swift
//  HangTime
//
//  Created by Kris Steigerwald on 10/22/22.
//

import SwiftUI

struct FriendPhotoView: View {
    
    let photo: Photo
    
    var body: some View {
        Image(photo.image)
            .resizable()
            .aspectRatio(contentMode: .fit)
    }
}

struct FriendPhotoView_Perviews: PreviewProvider {
    static var previews: some View {
        FriendPhotoView(photo: friends[0].photos[0])
            .previewLayout(.sizeThatFits)
            .padding()
            .background(Color.pink)
    }
}
