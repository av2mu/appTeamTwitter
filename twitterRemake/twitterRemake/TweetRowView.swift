//
//  TweetRowView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/17/23.
//

import SwiftUI

struct TweetRowView: View {
    var tweetText: String
    var tweetTime: String
    @State var tweetLikes: Int
    @State var tweetRTs: Int
    
    @State private var showReply = false
    @State private var isLiked = false
    @State private var isRTd = false
    @State private var isBMd = false
    
    var body: some View {
        VStack(alignment: .leading, spacing: -5){
            HStack(alignment: .top, spacing: 12) {
                Image("IMG_0305")
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .foregroundColor(Color(.systemMint))
                VStack(alignment:.leading, spacing: 4){
                    HStack{
                        Text("toomu")
                            .font(.subheadline).bold()
                        Text("@av2mu")
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(tweetTime)
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text(tweetText)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                }
            }
            HStack{
                Button{
                    showReply.toggle()
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }.sheet(isPresented: $showReply){
                    ReplyView()
                }
                
                
                Spacer()
                Button{
                    isRTd.toggle()
                } label: {
                    if(isRTd){
                        Image(systemName: "arrow.2.squarepath")
                            .foregroundColor(Color.green)
                            .font(.subheadline)
                    }
                    else{
                        Image(systemName: "arrow.2.squarepath")
                            .font(.subheadline)
                            
                    }
                    
                }
                if(isRTd){
                    Text(String(tweetRTs + 1))
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }else{
                    Text(String(tweetRTs))
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                Button{
                    isLiked.toggle()
                } label: {
                    if(!isLiked){
                        Image(systemName: "heart")
                            .font(.subheadline)
                    }
                    else{
                        Image(systemName: "heart.fill")
                            .foregroundColor(Color.red)
                    }
                    
                }
                if(isLiked){
                    Text(String(tweetLikes + 1))
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }else{
                    Text(String(tweetLikes))
                        .font(.caption)
                        .foregroundColor(Color.gray)
                }
                
                Spacer()
                Button{
                    isBMd.toggle()
                    
                } label: {
                    if(isBMd){
                        Image(systemName: "bookmark.fill")
                            .foregroundColor(Color.blue)
                            .font(.subheadline)
                        
                    }
                    else{
                        Image(systemName: "bookmark")
                            .font(.subheadline)
                            
                    }
                    
                }
            }
            .padding()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView(tweetText: "joe mama", tweetTime: "36m", tweetLikes: 999, tweetRTs: 36)
    }
}
