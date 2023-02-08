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
            VStack {
                NewsHightlightLabel()
                    .frame(alignment: .leading)
                Spacer()
                NewsHightlightDescription()
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



struct NewsHighlightViews_Previews: PreviewProvider {
    static var previews: some View {
        NewsHighlightViewLarge()
    }
}
