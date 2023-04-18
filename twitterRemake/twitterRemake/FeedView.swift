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
            VStack(spacing: -5){
                Image(systemName: "bird")
                Group{
                    TweetRowView(tweetText: "here’s my impression of a guy that doesn’t know what day of the week it is: well happy thursday everyone", tweetTime: "1m")
                    TweetRowView(tweetText: "shrimp fried rice ?", tweetTime: "2m")
                    TweetRowView(tweetText: "told my girl i love tory lanez and she took me bowling with boris johnson", tweetTime: "2m")
                    TweetRowView(tweetText: "helloooooooo", tweetTime: "2m")
                    TweetRowView(tweetText: "can anyone hear me", tweetTime: "2m")
                    TweetRowView(tweetText: "hello world", tweetTime: "2m")
                }
                TweetRowView(tweetText: "yooooooooo", tweetTime: "2m")
                TweetRowView(tweetText: "is anyone there", tweetTime: "2m")
                TweetRowView(tweetText: "wie gehts fellas", tweetTime: "2m")
                TweetRowView(tweetText: "hello world", tweetTime:"3m")
            }
        }
        
        
    }
}

struct FeedView_Previews: PreviewProvider {
    static var previews: some View {
        FeedView()
    }
}
