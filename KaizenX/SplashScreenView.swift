//
//  SplashScreenView.swift
//  KaizenX
//
//  Created by Cristi Sandu on 10.10.2023.
//

import SwiftUI

struct SplashScreenView: View {
    
    @Binding var isPresented: Bool
    
    @State private var scale = CGSize(width: 0.8, height: 0.8)
    @State private var opacity = 0.0
    @State private var opacity2 = 1.0
    @State private var opacity3 = 1.0

    
    var body: some View {
        ZStack {
            Color.white.ignoresSafeArea()
            
            ZStack {
                
                Image("logo1")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 250, height: 250)
                               .opacity(opacity)
                                           
                           
                           Image("logo2")
                               .resizable()
                               .scaledToFit()
                               .frame(width: 250, height: 250)
                               .opacity(opacity2)
            }
            .scaleEffect(scale)
        }
        .opacity(opacity3)
        .onAppear{
            withAnimation(.easeInOut(duration: 1.5)) {
                scale = CGSize(width: 1, height: 1)
                opacity = 1.0
            }
            
            for i in 0..<7 {
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.5 + Double(i)*0.2, execute: {
                    if opacity2 == 0.0
                    {
                        opacity2 = 1.0
                    }
                    else {
                        opacity2 = 0.0
                    }
                })
            }
            
            DispatchQueue.main.asyncAfter(deadline: .now() + 2.5, execute: {
                withAnimation(.easeIn(duration: 0.50)) {
                    scale = CGSize(width: 50, height: 50)
                    isPresented.toggle()
                   
                }
            })
        }
    }
}

#Preview {
    SplashScreenView(isPresented: .constant(true))
}
