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

struct LoginBoldText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .foregroundColor(Color("boldTextColor"))
            .font(.title2)
            .fontWeight(.black)
    }
}

struct LoginRegularText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .foregroundColor(Color("regularTextColor"))
    }
}

struct LoginSecondaryText: View {
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .foregroundColor(Color("secondaryTextColor"))
    }
}

struct RememberTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .foregroundColor(Color("boldTextColor"))
    }
}

struct ForgotTextView: View {
    
    var text: String
    
    var body: some View {
        Text(text)
            .font(.callout)
            .foregroundColor(Color("buttonColor"))
    }
}

//DIVIDER WITH LABELLED TEXTVIEW
struct LabelledDivider: View {

    let label: String
    let horizontalPadding: CGFloat
    let color: Color

    init(label: String, horizontalPadding: CGFloat = 20, color: Color = .gray) {
        self.label = label
        self.horizontalPadding = horizontalPadding
        self.color = color
    }

    var body: some View {
        HStack {
            line
            LoginSecondaryText(text:label)
            line
        }
    }

    var line: some View {
        VStack { Divider().background(color) }.padding(horizontalPadding)
    }
}

struct TextView_Previews: PreviewProvider {
    static var previews: some View {
        VStack {
            LandingBigTextView(text: "Hello world")
            LandingSmallTextView(text: "Let's go!")
            LoginBoldText(text: "Welcome Back")
            LoginRegularText(text: "Enter your name here")
            LoginSecondaryText(text: "Login successfull")
            ForgotTextView(text: "Forgot password?")
            LabelledDivider(label: "or sign in with")
        }
    }
}
