//
//  messagesView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI

struct messagesView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            NavigationStack{
                ScrollView{
                    DirectMessageView(userImage: "KUSH", username: "@kushs", nickname: "kush shah", message: "can i please hold 5 racks", time: "5m")
                    DirectMessageView(userImage: "HAVISH", username: "@hshirum", nickname: "pizza planet vs sandwich bro: evil lurking cabbage", message: "That’s kinda funny", time: "26m")
                    DirectMessageView(userImage: "AIDS", username: "@amintheampm", nickname: "aids", message: "You reacted to a Tweet with ❤️", time: "1h")
                    DirectMessageView(userImage: "BRUCE", username: "@draftdodger12", nickname: "bruce", message: "bruce reacted to a Tweet with 🔥", time: "3d")
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Direct Messages")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct messagesView_Previews: PreviewProvider {
    static var previews: some View {
        messagesView()
    }
}
