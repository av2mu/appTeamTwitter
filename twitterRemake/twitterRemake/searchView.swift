//
//  searchView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI


struct searchView: View {
    @State private var searchText = ""
    var body: some View {
        NavigationView{
            NavigationStack{
                ScrollView{
                    userview(userImage: "IMG_0305", username: "@av2mu", nickname: "toomu")
                    userview(userImage: "KUSH", username: "@kushs", nickname: "kush shah")
                    userview(userImage: "HAVISH", username: "@hshirum", nickname: "pizza planet vs sandwich bro: evil lurking cabbage")
                    userview(userImage: "AIDS", username: "@amintheampm", nickname: "aids")
                    userview(userImage: "BRUCE", username: "@draftdodger12", nickname: "bruce")
                }
            }
            .searchable(text: $searchText)
            .navigationTitle("Explore")
            .navigationBarTitleDisplayMode(.inline)
        }
        
    }
}

struct searchView_Previews: PreviewProvider {
    static var previews: some View {
        searchView()
    }
}
