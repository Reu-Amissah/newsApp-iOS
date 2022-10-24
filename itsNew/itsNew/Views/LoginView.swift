//
//  LoginView.swift
//  itsNew
//
//  Created by R. Amissah on 22/10/2022.
//

import SwiftUI

struct LoginView: View {
    var body: some View {
        VStack {
            Spacer()
            LoginHeaderView()
                .padding(.horizontal, 20)
            InputSection()
            Spacer()
            LoginButtonView()
                .padding(.horizontal, 20)
            Spacer()
        }
    }
}


//Input Fields Model------
struct InputSection: View {
    var body: some View {
        InputFieldView(username: "", text: "Email")
            .padding(.horizontal, 20)
            .padding(.top, 30)
        InputFieldView(username: "", text: "Password")
            .padding(.horizontal, 20)
            .padding(.top, 10)
        
    }
}

//Login Header Text -- Welcome Text
struct LoginHeaderView: View {
    var body: some View {
        VStack(spacing: 15) {
            LoginBoldText(text: "Welcome Back 👋")
                .frame(maxWidth: .infinity, alignment: .leading)
            LoginSecondaryText(text: "This would take less than a minute, enter your username, email and password")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

struct InputFieldView: View {
    @State var username: String
    var text: String
    
    var body: some View {
        TextField(text, text: $username)
            .padding()
            .foregroundColor(Color("secondaryTextColor"))
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .fill(
                        Color("inputFieldBackgroundColor")
                         )
            )
    }
}

struct LoginButtonView: View {
    var body: some View {
        
        VStack (spacing: 20) {
            Text("Login")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("buttonColor"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .bold()
                .font(.title3)
            Text("Not a member? Sign Up")
                .font(.callout)
        }
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
