//
//  FruitCardView.swift
//  fruits
//
//  Created by Onur Uğur on 29.10.2022.
//

import SwiftUI

struct FruitCardView: View {
    @State private var isAnimating : Bool = false

    var body: some View {
        
        
        ZStack{
        
        VStack(spacing:20) {
            
            Image("blueberry")
                .resizable()
                .scaledToFit()
                .shadow(color:Color(red: 0 , green : 0, blue : 0, opacity: 0.35)
                    ,radius: 8,x : 10, y : 10)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
            
            Text("Blueberry")
                .foregroundColor(Color.white)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .shadow(color : Color(red :0,green: 0,blue: 0,opacity: 0.15),radius: 2,x: 2,y: 2)
            
            Text("Blueberries are sweet, nutrious and widly popular fruits all over the world.")
                .foregroundColor(Color.white)
                .multilineTextAlignment(.center)
                .padding(20)
                .frame(maxWidth : 480)
            
            StartButtonView()
                
            }
            
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity,minHeight: 0,maxHeight: .infinity,alignment: .center)
        .background(LinearGradient(gradient: Gradient(colors: [Color("ColorBlueberryLight"), Color("ColorBlueberryDark")]), startPoint: .top, endPoint: .bottom))
            .cornerRadius(20)
            .padding(.horizontal, 20)
            .padding(.vertical,20)
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView()
            .previewLayout(.fixed(width: 320, height: 640))
    }
}
