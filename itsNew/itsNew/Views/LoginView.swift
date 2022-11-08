//
//  LoginView.swift
//  itsNew
//
//  Created by R. Amissah on 22/10/2022.
//

import SwiftUI
import Firebase
//import FirebaseAuth

//class AppViewModel: ObservableObject {
//    @State var signInProcessing = false
//    @State var signInErrorMessage = ""
//
//    func signInUser(email: String, password: String){
//        signInProcessing = true
//
//        Auth.auth().signIn(withEmail: email, password: password) { authResult, error in
//
//            guard error == nil else {
//                self.signInProcessing = false
//                self.signInErrorMessage = error!.localizedDescription
//                return
//            }
//            switch authResult {
//            case .none:
//                print("Could not sign in user.")
//                self.signInProcessing = false
//            case .some(_):
//                print("User signed in")
//                self.signInProcessing = false
//            }
//        }
//    }
//}

struct LoginView: View {
    @State var email = ""
    @State var password = ""
    
    var body: some View {
        NavigationView {
            ZStack {
                Color("regularBackground")
                    .ignoresSafeArea(.all)
                VStack {
                    Spacer()
                    LoginHeaderView()
                        .padding(.horizontal, 20)
                    InputSection()
                    Spacer()
                    LoginButtonView(email: $email, password: $password)
                        .padding(.horizontal, 20)
                    Spacer()
                    AssistedLoginView()
                }
            }
        }
    }
    
}


//Input Fields Model------
struct InputSection: View {
    var body: some View {
        InputFieldView(email: "")
            .padding(.horizontal, 20)
            .padding(.top, 30)
        SecureFieldView(password: "")
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
    @State var email: String
    
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

struct SecureFieldView: View {
    @State var password: String
    
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

struct LoginButtonView: View {
    @Binding var email: String
    @Binding var password: String
    
    var body: some View {
        
        VStack (spacing: 20) {
            Button {
                login()
            } label: {
                
                Text("Login")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("buttonColor"))
                    .cornerRadius(10)
                    .foregroundColor(.white)
                    .bold()
                    .font(.title3)
            }
                   
            Text("Not a member? Sign Up")
                .font(.callout)
                .foregroundColor(Color("regularTextColor"))
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
