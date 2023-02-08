//
//  NewsHighlightViews.swift
//  itsNew
//
//  Created by R. Amissah on 08/02/2023.
//

import SwiftUI

struct NewsHighlightViewLarge: View {
    var body: some View {
        ZStack {
            NewsHightlightBgImage()
            GeometryReader{ geometry in
                VStack {
                    NewsHightlightLabel()
                        .frame(width: geometry.size.width * 1, alignment: .leading)
                    Spacer()
                    NewsHightlightDescription()
                        .frame(width: geometry.size.width * 1, alignment: .leading)
                }
            }
        }
        .frame(height: 300)
    }
}

struct NewsHightlightBgImage: View {
    var body: some View {
        GeometryReader{ geometry in
            Image("MainImage")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: geometry.size.width * 1)
                .clipped()
        }
        .frame(height: 300)
        
    }
}

struct NewsHightlightDescription: View {
    var body: some View {
        Text("Hello World")
            .frame(width: .infinity)
        
    }
}

struct NewsHightlightLabel: View {
    var body: some View {
        Text("Hello World")
            .frame(width: .infinity)
        
    }
}

struct NewsHighlightViews_Previews: PreviewProvider {
    static var previews: some View {
        NewsHighlightViewLarge()
    }
}
