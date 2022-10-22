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
            Color("backgroundColor")
                .edgesIgnoringSafeArea(.all)
            VStack (spacing: 10) {
                Spacer()
                Image("logo")
                    .imageScale(.large)
                    .foregroundColor(.accentColor)
                    .frame(width: 92, height: 92)
                    .cornerRadius(50)
                HStack {
                    Text("Welcome to ")
                        .foregroundColor(Color("textColorLanding"))
                    Text("itsNew")
                        .foregroundColor(.orange)
                }
                .font(.title2)
                .bold()
                
                Text("Stay up to date with latest news around the world").foregroundColor(Color("textColorLanding"))
                    .multilineTextAlignment(.center)
                
                Spacer()
                Text("Get Started")
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(Color("buttonColor"))
                    .cornerRadius(30)
                    .foregroundColor(.white)
                    .bold()
                
            }
            .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
