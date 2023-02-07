//
//  HorizontalScroll.swift
//  itsNew
//
//  Created by R. Amissah on 07/02/2023.
//

import SwiftUI

struct HorizontalScroll: View {
    var body: some View {
        ScrollView(.horizontal){
            HStack (spacing:20) {
                HorizontalTextView(text: "News")
                    .padding(.horizontal, 20)
                    .padding(.vertical, 5)
                    .background(
                        Color(.white)
                    )
                    .cornerRadius(10)
                HorizontalTextView(text: "Sport")
                HorizontalTextView(text: "Technology")
                HorizontalTextView(text: "Trending")
                HorizontalTextView(text: "History")
                HorizontalTextView(text: "Politics")
                HorizontalTextView(text: "Biology")
            }
            .padding(5)
            .background(
                Color("inputFieldBackgroundColor")
            )
            .cornerRadius(10)
        }
    }
}

struct HorizontalTextView: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.headline)
    }
}

struct HorizontalScroll_Previews: PreviewProvider {
    static var previews: some View {
        HorizontalScroll()
    }
}
