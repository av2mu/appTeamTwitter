//
//  NavBarView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI

struct NavBarView: View {
    @State private var itemIndex = 0
    var body: some View {
        TabView(selection: $itemIndex){
            FeedView()
                .onTapGesture {
                    self.itemIndex = 0
                }
                .tabItem{
                    Image(systemName: "house")
                }.tag(0)
            searchView()
                .onTapGesture {
                    self.itemIndex = 1
                }
                .tabItem{
                    Image(systemName: "magnifyingglass")
                }.tag(1)
            spacesView()
                .onTapGesture {
                    self.itemIndex = 2
                }
                .tabItem{
                    Image(systemName: "mic.fill")
                }.tag(2)
            notificationView()
                .onTapGesture {
                    self.itemIndex = 3
                }
                .tabItem{
                    Image(systemName: "bell")
                }.tag(3)
            messagesView()
                .onTapGesture {
                    self.itemIndex = 4
                }
                .tabItem{
                    Image(systemName: "envelope")
                }.tag(0)
        }
    }
}

struct NavBarView_Previews: PreviewProvider {
    static var previews: some View {
        NavBarView()
    }
}
