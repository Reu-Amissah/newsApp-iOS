//
//  SignUp.swift
//  itsNew
//
//  Created by R. Amissah on 30/10/2022.
//

import SwiftUI
import Firebase

struct SignUpView: View {
    @State var signUpEmail = ""
    @State var signUpPassword = ""
    @State var signUpProcessing = false
    @State var userIsSignedIn = false
    
    var body: some View {
        
        //condition to navigate LOGIN after successfull SIGN UP✅
        if userIsSignedIn {
            withAnimation {
                LoginView()
            }
        }else{
            content
        }
    }
    
    var content: some View {

        ZStack {
            Color("regularBackground")
                .ignoresSafeArea(.all)
            VStack {
                Spacer()
                SignUpHeaderView()
                    .padding(.horizontal, 20)
                SignUpInputFieldView(signUpEmail: $signUpEmail)
                    .padding(.horizontal, 20)
                    .padding(.top, 30)
                SignUpSecureFieldView(signUpPassword: $signUpPassword)
                    .padding(.horizontal, 20)
                    .padding(.top, 10)
                LoginSecondaryOptionsView()
                    .padding(.top, 20)
                Spacer()
                SignUpButtonView(signUpEmail: $signUpEmail, signUpPassword: $signUpPassword, signUpProcessing: $signUpProcessing, userIsSignedIn: $userIsSignedIn)
                    .padding(.horizontal, 20)
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


struct SignUpButtonView: View {
    @Binding var signUpEmail: String
    @Binding var signUpPassword: String
    @Binding var signUpProcessing: Bool
    @Binding var userIsSignedIn: Bool
    
    var body: some View {
        
        VStack (spacing: 20) {
            Button {
                signUp()
            } label: {
                SignUpButtonTextView(text: "Login")
            }
            //ADD PROGRESS or LOADING VIEW
            //            if signInProcessing {
            //                ProgressView()
            //            }
            NotLoginTextView(text: "Not a member? Sign In")
            
        }
        
    }
    
    //firebase signUp Authentication model
    func signUp() {
        
        signUpProcessing = true
        Auth.auth().createUser(withEmail: signUpEmail, password: signUpPassword) { (result, error) in
            if error != nil {
                signUpProcessing = false
                print(error?.localizedDescription ?? "")
            } else {
                signUpProcessing = false
                userIsSignedIn = true
                print("success")
            }
        }
    }
    
}


struct SignUpInputFieldView: View {
    @Binding var signUpEmail: String
    
    var body: some View {
        TextField("Email", text: $signUpEmail)
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
        SecureField("Password", text: $signUpPassword)
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
