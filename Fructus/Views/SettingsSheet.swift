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
    @AppStorage("isOnboarding") var isOnboarding: Bool = false
    
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
                                .padding(.vertical, 8)
                                .frame(minHeight: 60)
                                .multilineTextAlignment(.leading)
                                .layoutPriority(1)
                        }
                        
                    }
                    
                    // MARK: - SECTION 2
                    GroupBox(
                        label: SettingsLabelView(labelString: "Customization", labelImage: "paintbrush")
                    ){
                        Divider().padding(.vertical, 4)
                        
                        Text("If you wish you can restart the application by toggle the swicth in this way you will see the onboarding screen again.").font(.footnote)
                        
                        Toggle(isOn: $isOnboarding) {
                           
                            Text("Restart".uppercased())
                                .fontWeight(.bold)
                                .foregroundColor( isOnboarding ? Color.green : Color.secondary)
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 9, style: .continuous))
                        )
                    }
                    
                    // MARK: - SECTION 3
                    GroupBox(
                        label:
                            SettingsLabelView(labelString: "Application", labelImage: "apps.iphone")
                    ) {
                        
                        SettingsRowView(name: "Developer", content: "Fadel Bidiga")
                        SettingsRowView(name: "Designer", content: "Fadel Bidiga")
                        SettingsRowView(name: "Compatibility", content: "iOS 15")
                        SettingsRowView(name: "Website", linkLabel: "Portfolio", linkDescrtiption: "")
                        SettingsRowView(name: "Twitter", linkLabel: "@AFadelBidiga", linkDescrtiption: "")
                        SettingsRowView(name: "Version", content: "1.1.0")
                        
                    }
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
