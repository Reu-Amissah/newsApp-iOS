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
            
            //NewsFeed View (content)
            ZStack {
                ScrollView{
                    VStack{
                        Header()
                        HorizontalScroll()
                        Text("hello world")
                        Text("Hi world")
                        Text("h world")
                        Text("ee world")
                        Text("kahhl world")
                            .frame(height: 650)
                        Text("ks world")
                        Text("aa world")
                        Text("aasd world")
                    }
                }
                .padding(.bottom, 70)
                
                //Navigtor View
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
