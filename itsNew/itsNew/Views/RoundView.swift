//
//  RoundView.swift
//  itsNew
//
//  Created by R. Amissah on 24/10/2022.
//

import SwiftUI




struct LoginButtonTextView: View {
    var text = ""
    
    var body: some View {
        Text("Login")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("buttonColor"))
            .cornerRadius(10)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
    }
}

struct SignUpButtonTextView: View {
    var text = ""
    
    var body: some View {
        Text("Sign Up")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("buttonColor"))
            .cornerRadius(10)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
    }
}


struct NotLoginTextView: View {
    var text = ""
    
    var body: some View {
        Text("Not a member? Sign Up")
            .font(.callout)
            .foregroundColor(Color("regularTextColor"))
       }
}

struct NewsHightlightLabel: View {
    var body: some View {
        Text("Hello label")
//            .frame(alignment: .leading)
        
    }
}

struct NewsHightlightDescription: View {
    var body: some View {
        Text("Hello World")
            .frame(maxWidth: .infinity, alignment: .leading)
        
    }
}



struct RoundView_Previews: PreviewProvider {
    
    static var previews: some View {
        VStack{
            NotLoginTextView(text: "hello")
            SignUpButtonTextView(text: "Hello")
            NewsHightlightLabel()
            NewsHightlightDescription()
        }
        .padding(.horizontal, 20)
    }
}
