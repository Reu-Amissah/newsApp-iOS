//
//  SignUp.swift
//  itsNew
//
//  Created by R. Amissah on 30/10/2022.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State static var email = ""
    @State static var password = ""
    @State static var username = ""
    
    var body: some View {
        ZStack {
            Color("regularBackground")
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                SignUpHeaderView()
                    .padding(.horizontal, 20)
                SignUpInputSection(email: SignUpView.$email, password: SignUpView.$password, username: SignUpView.$username)
                Spacer()
                LabelledDivider(label: "Or SignUp with")
                    .padding(.bottom, 20)
                AssistedLoginView()
            }
        }
    }
}

struct SignUpHeaderView: View {
    var body: some View {
        VStack(spacing: 15) {
            LoginBoldText(text: "Create an account")
                .frame(maxWidth: .infinity, alignment: .leading)
            LoginSecondaryText(text: "This would take less than a minute, enter your username, email and password")
                .frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

//Input Fields Model------
struct SignUpInputSection: View {
    @Binding var email: String
    @Binding var password: String
    @Binding var username: String
    
    var body: some View {
        SignUpInputFieldView(email: $username)
            .padding(.horizontal, 20)
            .padding(.top, 30)
        SignUpInputFieldView(email: $email)
            .padding(.horizontal, 20)
            .padding(.top, 30)
        SignUpSecureFieldView(password: $password)
            .padding(.horizontal, 20)
            .padding(.top, 10)
        
    }
}

struct SignUpInputFieldView: View {
    @Binding var email: String
    
    var body: some View {
        TextField("Email", text: $email)
            .textCase(.lowercase)
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

struct SignUpSecureFieldView: View {
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: $password)
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






struct SignUp_Previews: PreviewProvider {
    static var previews: some View {
        SignUpView()
    }
}
