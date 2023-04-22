//
//  DirectMessageView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI

struct DirectMessageView: View {
    var userImage: String
    var username: String
    var nickname: String
    var message: String
    var time: String
    
    var body: some View {
        VStack(alignment: .leading, spacing: -5){
            HStack(alignment: .top, spacing: 12) {
                Image(userImage)
                    .resizable()
                    .frame(width: 56, height: 56)
                    .clipShape(Circle())
                    .foregroundColor(Color(.systemMint))
                    .padding(.leading, 15)
                VStack(alignment:.leading, spacing: 4){
                    HStack{
                        Text(nickname)
                            .font(.subheadline).bold()
                        Text(username)
                            .foregroundColor(.gray)
                            .font(.caption)
                        Text(time)
                            .foregroundColor(.gray)
                            .font(.caption)
                    }
                    Text(message)
                        .font(.subheadline)
                        .multilineTextAlignment(.leading)
                        .foregroundColor(Color.gray)
                }
                Spacer()
            }
            
        }
    }
    
    struct DirectMessageView_Previews: PreviewProvider {
        static var previews: some View {
            DirectMessageView(userImage: "IMG_0305", username: "@av2mu", nickname: "toomu", message: "You sent @ButtcrackSports's Tweet", time: "45m")
        }
    }
}
