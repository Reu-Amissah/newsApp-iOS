//
//  ContentView.swift
//  itsNew
//
//  Created by R. Amissah on 20/10/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundColor(.accentColor)
            HStack {
                Text("Welcome to ")
                Text("itsNew")
                    .foregroundColor(.orange)
            }
            .font(.title2)
            .bold()
            .padding(.top)
            
            Text("Stay up to date with latest news around the world")
                .multilineTextAlignment(.center)
                .padding(.top)
            
            Spacer()
            Text("Get Started")
                .padding()
                .frame(maxWidth: .infinity)
                .background(.blue)
                .cornerRadius(10)
                .foregroundColor(.white)
                .bold()
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
