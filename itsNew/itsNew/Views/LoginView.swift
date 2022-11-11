//
//  LoginView.swift
//  itsNew
//
//  Created by R. Amissah on 22/10/2022.
//

import SwiftUI
import Firebase

struct LoginView: View {
    @State static var email = ""
    @State static var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("regularBackground")
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    LoginHeaderView()
                        .padding(.horizontal, 20)
                    InputSection(email: LoginView.$email, password: LoginView.$password)
                    LoginSecondaryOptionsView()
                        .padding(.top, 20)
                    Spacer()
                    LoginButtonView(email: LoginView.$email, password: LoginView.$password)
                        .padding(.horizontal, 20)
                    Spacer()
                    LabelledDivider(label: "Or Login With")
                        .padding(.bottom, 20)
                    AssistedLoginView()
                }
            }
        }
    }
    
}




struct LoginSecondaryOptionsView: View {
    @State private var vibrateOnRing = true
    
    var body: some View {
        HStack{
            RememberTextView(text: "Remember me")
            Spacer()
            ForgotTextView(text: "Forgot password?")
        }
        .padding(.horizontal, 20)
    }
}



//Input Fields Model------
struct InputSection: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        LoginInputFieldView(email: LoginView.$email)
            .padding(.horizontal, 20)
            .padding(.top, 30)
        LoginSecureFieldView(password: LoginView.$password)
            .padding(.horizontal, 20)
            .padding(.top, 10)
        
    }
}

struct LoginInputFieldView: View {
    @Binding var email: String
    
    var body: some View {
        TextField("Email", text: LoginView.$email)
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

struct LoginSecureFieldView: View {
    @Binding var password: String
    
    var body: some View {
        SecureField("Password", text: LoginView.$password)
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



struct LoginButtonView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        
        VStack (spacing: 20) {
            Button {
                login()
            } label: {
                LoginButtonTextView(text: "Login")
            }
                   
            NotLoginTextView(text: "Not a member? Sign In")
        }
    }
    
    //firebase login Authentication model
    func login() {
        
        Auth.auth().signIn(withEmail: email, password: password) { (result, error) in
            if error != nil {
                print(error?.localizedDescription ?? "")
            } else {
                print("success")
            }
        }
    }
}

struct AssistedLoginView: View {
    var body: some View {
        HStack {
            FacebookButtonView()
            GoogleButtonView()
            
        }
        .padding(.horizontal, 20)
    }
}

struct FacebookButtonView: View {
    var body: some View {
        Text("Facebook")
            .padding()
            .frame(maxWidth: .infinity)
            .background(Color("backgroundColor"))
            .cornerRadius(10)
            .foregroundColor(.white)
            .bold()
            .font(.title3)
    }
}

struct GoogleButtonView: View {
    var body: some View {
        Text("Google")
            .padding()
            .frame(maxWidth: .infinity)
            .background(.white)
            .cornerRadius(10)
            .foregroundColor(Color("buttonColor"))
            .bold()
            .font(.title3)
            .background(
                RoundedRectangle(cornerRadius: 10)
                    .stroke(Color("inputFieldBackgroundColor"), lineWidth: 5)
            )
        
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
    }
}
