//
//  ContentView.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            ZStack {
                BackgroundView()
                VStack {
                    ImageView()
                    WelcomeView()
                    Spacer()
                    ButtonView()
                        .padding()
                    
                }
            }
        }
    }
}

struct ImageView: View {
    var body: some View {
        Image("landingImage")
            .resizable()
            .imageScale(.medium)
            .frame(width: UIScreen.main.bounds.width, height: 400)
            .edgesIgnoringSafeArea(.top)
        
    }
}

struct WelcomeView: View {
    
    var body: some View {
        
        VStack (spacing: 20) {
            
            LandingSmallTextView(text: "Get Started")
                .foregroundColor(Color("textColorLanding"))
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.leading, 15)
                
            LandingBigTextView(text: "Stay up to date with news from all over the world")
                .foregroundColor(Color("textColorLanding"))
            
            LandingSmallTextView(text: "The easiest way to stay connected with the world")
                .foregroundColor(Color("textColorLanding"))
            
//            Text("Get Started")
//                .foregroundColor(Color("textColorLanding"))
//                .font(.callout)
//            Text("Stay up to date with news from all over the world")
//                .font(.title)
//                .fontWeight(.black)
//                .kerning(2)
//            Text("The easiest way to stay connected with the world")
//                .font(.callout)
        }
        
        
    }
}

struct ButtonView: View {
    var body: some View {
        HStack {
            Text("Register")
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("buttonColor"))
                .cornerRadius(10)
                .foregroundColor(.white)
                .bold()
                .font(.title3)
            NavigationLink(destination: LoginView()) {
                Text("Login")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(.white)
                    .cornerRadius(10)
                    .foregroundColor(Color("buttonColor"))
                    .bold()
                    .font(.title3)
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
