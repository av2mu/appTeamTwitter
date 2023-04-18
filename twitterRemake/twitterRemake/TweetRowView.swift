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
    
    var body: some View {
        VStack(alignment: .leading){
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
                } label: {
                    Image(systemName: "bubble.left")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                } label: {
                    Image(systemName: "arrow.2.squarepath")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                } label: {
                    Image(systemName: "heart")
                        .font(.subheadline)
                }
                Spacer()
                Button{
                } label: {
                    Image(systemName: "bookmark")
                        .font(.subheadline)
                }
            }
            .padding()
        }
        .padding()
    }
}

struct TweetRowView_Previews: PreviewProvider {
    static var previews: some View {
        TweetRowView(tweetText: "wie gehts fellas", tweetTime: "36m")
    }
}
