//
//  FeedView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/17/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        VStack{
            TweetRowView(tweetText: "wie gehts fellas", tweetTime: "1m")
            TweetRowView(tweetText: "hello world", tweetTime: "2m")
        }
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
