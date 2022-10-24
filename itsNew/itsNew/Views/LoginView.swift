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
                .multilineTextAlignment(.leading)
            Spacer()
            LoginButtonView()
        }
    }
}

struct LoginHeaderView: View {
    var body: some View {
        LoginBoldText(text: "Welcome Back 👋")
            .multilineTextAlignment(.trailing)
        LoginSecondaryText(text: "This would take less than a minute, enter your username, email and password")
    }
}

struct LoginButtonView: View {
    var body: some View {
        Text("Not a member? Sign Up")
        Text("Login")
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
