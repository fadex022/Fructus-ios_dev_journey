//
//  StartButtonView.swift
//  Fructus
//
//  Created by Gauss on 26/04/2022.
//

import SwiftUI

struct StartButtonView: View {
    // MARK: - PROPERTIES
    @AppStorage("isOnboarding") var isOnboarding: Bool?
    
    // MARK: - BODY
    var body: some View {
        Button(action: {
            isOnboarding = false
        }, label: {
            Text("Start")
            
            Image(systemName: "arrow.right.circle")
                .imageScale(.large)
        })//: BUTTON
        .accentColor(.white)
        .padding(.horizontal, 16)
        .padding(.vertical, 10)
        .background(
            Capsule()
                .stroke(.white, lineWidth: 1.25)
        )
    }
}


// MARK: - PREVIEW
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
