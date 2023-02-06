//
//  Navigator.swift
//  itsNew
//
//  Created by R. Amissah on 06/02/2023.
//

import SwiftUI

struct Navigator: View {
    var body: some View {
        
        VStack {
            Spacer()
            NavigationPanel()
        }
    }
}

struct Navigator_Previews: PreviewProvider {
    static var previews: some View {
        Navigator()
    }
}
