//
//  TextView.swift
//  itsNew
//
//  Created by R. Amissah on 22/10/2022.
//

import SwiftUI

struct LandingBigTextView: View {
    @State var text: String
    
    var body: some View {
        Text(text)
            .font(.title)
            .fontWeight(.black)
            .kerning(2)
    }
}

struct LandingSmallTextView: View {
    @State var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LandingBigTextView(text: "Hello world")
            LandingSmallTextView(text: "Let's go!")
        }
    }
}