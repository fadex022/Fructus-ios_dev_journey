//
//  StartButtonView.swift
//  Fructus
//
//  Created by Gauss on 26/04/2022.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            print("exit onboarding")
        }, label: {
            Text("Start")
        })//: BUTTON
        .accentColor(.white)
    }
}


// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
