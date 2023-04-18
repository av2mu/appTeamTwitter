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
            VStack{
                Image(systemName: "bird")
                Group{
                    TweetRowView(tweetText: "ok bye", tweetTime: "1m")
                    TweetRowView(tweetText: "i hate it here", tweetTime: "2m")
                    TweetRowView(tweetText: "am i the only one here", tweetTime: "2m")
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
