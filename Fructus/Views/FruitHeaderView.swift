//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Gauss on 28/04/2022.
//

import SwiftUI

struct FruitHeaderView: View {
    // MARK: - PROPERTIES
    @State private var isAnimatingImage: Bool = false
    
    var fruit: Fruit
    
    // MARK: - BODY
    var body: some View {
        ZStack{
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomLeading)
            
            Image(fruit.image)
                .resizable()
                .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 2, y: 2)
                .padding(.vertical, 20)
                .scaleEffect(isAnimatingImage ? 1 : 0.6)
        }//: ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.4)){
                isAnimatingImage = true
            }
        }
    }
}

// MARK: - PREVIEW
struct FruitHeaderView_Previews: PreviewProvider {
    static var previews: some View {
        FruitHeaderView(fruit: fruitsData[1])
            .previewLayout(.fixed(width: 375, height: 440))
    }
}
