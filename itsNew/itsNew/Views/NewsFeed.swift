//
//  NewsFeed.swift
//  itsNew
//
//  Created by R. Amissah on 09/12/2022.
//

import SwiftUI

struct NewsFeed: View {
    var body: some View {
        ZStack{
            Color("NewsFeedBg")
                .ignoresSafeArea(.all)
            ZStack {
                ScrollView{
                    VStack{
                        Header()
                        ScrollView(.horizontal){
                            HStack (spacing:20) {
                                Text("News")
                                Text("Sports")
                                Text("Technology")
                                Text("Biology")
                                Text("Lightweight")
                            }
                            .font(.headline)
                        }
                        
                    }
                }
                Navigator()
            }
            .padding(.horizontal, 10)
        }
    }
}

struct Header: View {
    var body: some View {
        HStack{
            LandingBigTextView(text: "InfluxNews")
            Spacer()
            Image(systemName: "bell")
                .foregroundColor(.black)
                .font(.title)
        }.padding(.top, 10)
    }
}

struct NewsFeed_Previews: PreviewProvider {
    static var previews: some View {
        NewsFeed()
    }
}
