//
//  ContentView.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            BackgroundView()
            VStack (spacing: 10) {
                Spacer()
                WelcomeView()
                Spacer()
                ButtonView()
                
            }
            .padding()
        }
    }
}

struct WelcomeView: View {
    
    var body: some View {
        Image("logo")
            .imageScale(.large)
            .foregroundColor(.accentColor)
            .frame(width: 92, height: 92)
            .cornerRadius(50)
        HStack {
            Text("Welcome to")
                .foregroundColor(Color("textColorLanding"))
            Text("itsNew")
                .foregroundColor(.orange)
        }
        .font(.title2)
        .bold()
        
        Text("Stay up to date with latest news around the world").foregroundColor(Color("textColorLanding"))
            .multilineTextAlignment(.center)
            .font(.callout)
        
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

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
