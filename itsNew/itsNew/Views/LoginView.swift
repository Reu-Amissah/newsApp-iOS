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
            LoginHeaderView()
            Spacer()
            LoginButtonView()
        }
    }
}

struct LoginHeaderView: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
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
