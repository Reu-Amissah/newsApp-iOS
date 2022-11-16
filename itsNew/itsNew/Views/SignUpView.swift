//
//  SignUp.swift
//  itsNew
//
//  Created by R. Amissah on 30/10/2022.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State static var signUpEmail = ""
    @State static var signUpPassword = ""
    @State static var signUpUsername = ""
    
    var body: some View {
        ZStack {
            Color("regularBackground")
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                SignUpHeaderView()
                    .padding(.horizontal, 20)
                SignUpInputSection(signUpEmail: SignUpView.$signUpEmail, signUpPassword: SignUpView.$signUpPassword, signUpUsername: SignUpView.$signUpUsername)
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
    @Binding var signUpEmail: String
    @Binding var signUpPassword: String
    @Binding var signUpUsername: String
    
    var body: some View {
        SignUpInputFieldView(signUpEmail: SignUpView.$signUpUsername)
            .padding(.horizontal, 20)
            .padding(.top, 30)
        SignUpInputFieldView(signUpEmail: SignUpView.$signUpEmail)
            .padding(.horizontal, 20)
            .padding(.top, 30)
        SignUpSecureFieldView(signUpPassword: SignUpView.$signUpPassword)
            .padding(.horizontal, 20)
            .padding(.top, 10)
        
    }
}

struct SignUpInputFieldView: View {
    @Binding var signUpEmail: String
    
    var body: some View {
        TextField("Email", text: SignUpView.$signUpEmail)
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
    @Binding var signUpPassword: String
    
    var body: some View {
        SecureField("Password", text: SignUpView.$signUpPassword)
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
