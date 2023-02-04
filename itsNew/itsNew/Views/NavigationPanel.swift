//
//  NavigationPanel.swift
//  itsNew
//
//  Created by R. Amissah on 04/02/2023.
//

import SwiftUI

struct NavigationPanel: View {
    var body: some View {
        HStack (spacing: 60) {
            Image(systemName: "newspaper.fill")
                .foregroundColor(.black)
                .font(.title2)
            Image(systemName: "bookmark")
                .foregroundColor(.black)
                .font(.title2)
            Image(systemName: "magnifyingglass")
                .foregroundColor(.black)
                .font(.title2)
            Image(systemName: "person.circle")
                .foregroundColor(.black)
                .font(.title2)

        }
        .frame(maxWidth: .infinity)
        .padding(.vertical, 20)
        .background(Color("regularBackground"))
        .cornerRadius(20)
        .shadow(color: .gray, radius: 100, x: 0, y: 10)
    }
}

struct NavigationPanel_Previews: PreviewProvider {
    static var previews: some View {
        NavigationPanel()
    }
}
