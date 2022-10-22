//
//  BackgroundView.swift
//  itsNew
//
//  Created by R. Amissah on 22/10/2022.
//

import SwiftUI

struct BackgroundView: View {
    var body: some View {
        Color("backgroundColor")
            .edgesIgnoringSafeArea(.all)
    }
}

struct BackgroundView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroundView()
    }
}
