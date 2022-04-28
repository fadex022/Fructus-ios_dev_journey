//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Gauss on 28/04/2022.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: PROPERTIES
    var labelString: String
    var labelImage: String
    
    // MARK: - BODY
    var body: some View {
        HStack {
            Text(labelString.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

// MARK: - PREVIEW
struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelString: "Test", labelImage: "info")
            .padding()
    }
}
