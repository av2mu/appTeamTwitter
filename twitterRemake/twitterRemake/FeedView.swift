//
//  FeedView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/17/23.
//

import SwiftUI

struct FeedView: View {
    var body: some View {
        ScrollView{
            Image(systemName: "bird")
            VStack(spacing: -25){
                
                Group{
                    TweetRowView(tweetText: "here’s my impression of a guy that doesn’t know what day of the week it is: well happy thursday everyone", tweetTime: "15s", tweetLikes: 347, tweetRTs: 33)
                    TweetRowView(tweetText: "shrimp fried rice ?", tweetTime: "45s", tweetLikes: 3, tweetRTs: 1)
                    TweetRowView(tweetText: "told my girl i love tory lanez and she took me bowling with boris johnson", tweetTime: "2m", tweetLikes: 987, tweetRTs: 624)
                    TweetRowView(tweetText: "helloooooooo", tweetTime: "2m", tweetLikes: 2, tweetRTs: 1)
                    TweetRowView(tweetText: "can anyone hear me", tweetTime: "2m", tweetLikes: 1, tweetRTs: 0)
                    TweetRowView(tweetText: "hello world", tweetTime: "2m", tweetLikes: 5, tweetRTs: 2)
                }
                TweetRowView(tweetText: "yooooooooo", tweetTime: "2m", tweetLikes: 6, tweetRTs: 3)
                TweetRowView(tweetText: "is anyone there", tweetTime: "2m", tweetLikes: 6, tweetRTs: 3)
                TweetRowView(tweetText: "wie gehts fellas", tweetTime: "2m", tweetLikes: 6, tweetRTs: 3)
                TweetRowView(tweetText: "hello world", tweetTime:"3m", tweetLikes: 1, tweetRTs: 1)
            }
        }
        
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
