//
//  RoundView.swift
//  itsNew
//
//  Created by R. Amissah on 24/10/2022.
//

import SwiftUI


struct InputFieldView: View {
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

struct SecureFieldView: View {
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

struct NotLoginTextView: View {
    var text = ""
    
    var body: some View {
        Text("Not a member? Sign Up")
            .font(.callout)
            .foregroundColor(Color("regularTextColor"))
       }
}



//struct RoundView_Previews: PreviewProvider {
//    
//    static var previews: some View {
//        
//    }
//}
