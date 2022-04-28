//
//  SettingsSheet.swift
//  Fructus
//
//  Created by Gauss on 28/04/2022.
//

import SwiftUI

struct SettingsSheet: View {
    // MARK: - PROPERTIES
    @Environment(\.presentationMode) var presentationMode
    
    // MARK: - BODY
    var body: some View {
        NavigationView {
            ScrollView(.vertical, showsIndicators: false){
                VStack(spacing: 20) {
                    // MARK: - SECTION 1
                    GroupBox(
                        label:
                            SettingsLabelView(labelString: "Fructus", labelImage: "info.circle")
                    ){
                        Divider().padding(.vertical, 2)
                        HStack {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80, height: 80)
                                .cornerRadius(9)
                            
                            Text("Most fruits are naturally low in fat, sodium and calories. None have cholesterol. Fruits are sources of many essentials nutrients, including potassium, dietry fiber, vitamins and much more.")
                                .font(.footnote)
                        }
                    }
                    
                    // MARK: - SECTION 2
                }//: VSTACK
                .navigationBarTitle(Text("Settings"), displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }){
                            Image(systemName: "xmark")
                        }
                )
                .padding()
            }//: SCROLL
        }//: NAVIGATION
    }
}


// MARK: - PREVIEW
struct SettingsSheet_Previews: PreviewProvider {
    static var previews: some View {
        SettingsSheet()
            .preferredColorScheme(.dark)
    }
}
