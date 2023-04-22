//
//  userview.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI

struct userview: View {
    var userImage: String
    var username: String
    var nickname: String
    var body: some View {
        HStack() {
            Image(userImage)
                .resizable()
                .frame(width: 56, height: 56)
                .clipShape(Circle())
                .foregroundColor(Color(.systemMint))
                .padding(.leading, 20)
            
            VStack(alignment:.leading, spacing: 4){
                    Text(nickname)
                        .font(.subheadline).bold()
                    Text(username)
                        .foregroundColor(.gray)
                        .font(.caption)
            }
            Spacer()
        }
    }
}

struct userview_Previews: PreviewProvider {
    static var previews: some View {
        userview(userImage: "IMG_0305", username: "@av2mu", nickname: "toomu")
    }
}
