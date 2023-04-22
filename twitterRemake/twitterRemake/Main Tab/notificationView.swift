//
//  notificationView.swift
//  twitterRemake
//
//  Created by Anish Toomu on 4/22/23.
//

import SwiftUI

struct notificationView: View {
    var body: some View {
        NavigationView{
            NavigationStack{
                ScrollView{
                    VStack(spacing: 15){
                        HStack{
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.red)
                                .frame(width: 30)
                                .padding(.leading, 30)
                            Image("NEIL")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .foregroundColor(Color(.systemMint))
                                .padding(.leading, 20)
                            Spacer()
                        }
                        Text("**neil (parody)** liked your tweet")
                            .frame(alignment: .center)
                        Text("here’s my impression of a guy that doesn’t know what day of the week it is: well happy thursday everyone")
                            .frame(alignment: .leading)
                            .padding(.leading, 85)
                            .foregroundColor(Color.gray)
                        HStack(alignment: .bottom){
                            Image(systemName: "heart.fill")
                                .resizable()
                                .scaledToFit()
                                .foregroundColor(Color.red)
                                .frame(width: 30)
                                .padding(.leading, 30)
                            Image("HARIPSO")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .clipShape(Circle())
                                .foregroundColor(Color(.systemMint))
                                .padding(.leading, 20)
                            Spacer()
                        }
                        Text("**haripso** liked your tweet")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .padding(.leading, 85)
                        Text("wie gehts fellas")
                            .frame(maxWidth: .infinity, alignment: .leading)
                            .foregroundColor(Color.gray)
                            .padding(.leading, 85)
                    }
                    
                    
                }
            }
            .navigationTitle("Notifications")
        }
        
    }
}

struct notificationView_Previews: PreviewProvider {
    static var previews: some View {
        notificationView()
    }
}
