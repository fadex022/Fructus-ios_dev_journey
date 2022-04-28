//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Gauss on 28/04/2022.
//

import SwiftUI

struct SettingsRowView: View {
    // MARK: - PROPERTIES
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDescrtiption: String? = nil
    
    // MARK: - BODY
    var body: some View {
        VStack {
            Divider().padding(.vertical, 4)
            HStack {
                Text(name).foregroundColor(Color.gray)
                Spacer()
                if content != nil {
                    Text(content!)
                }else if linkLabel != nil && linkDescrtiption != nil{
                    Link(linkLabel!, destination: URL(string: "https://\(linkDescrtiption!)")!)
                    Image(systemName: "arrow.up.right.square").foregroundColor(Color.pink)
                }else {
                    /*@START_MENU_TOKEN@*/EmptyView()/*@END_MENU_TOKEN@*/
                }
            }
        }
    }
}


// MARK: - PREVIEW
struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "name", linkLabel: "Link", linkDescrtiption: "content")
            .previewLayout(.sizeThatFits)
            .padding()
        
        SettingsRowView(name: "name", content: "content")
            .previewLayout(.sizeThatFits)
            .preferredColorScheme(.dark)
            .padding()
    }
}
