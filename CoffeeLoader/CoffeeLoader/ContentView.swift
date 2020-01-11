//
//  ContentView.swift
//  CoffeeLoader
//
//  Created by Iwin Yeung on 1/10/20.
//  Copyright © 2020 Iwin Yeung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State private var animateStrokeStart = false
    @State private var animateStrokeEnd = true
    @State private var isRotating = true
    
    var body: some View {
        ZStack {
            Text("Loading...")
                .font(.largeTitle)
                .fontWeight(.medium)
                .foregroundColor(Color.black)
                .offset(y: -250)
            
            Image("toffee")
       
                .frame(width: 0.1, height: 0.1)
        
        
            Circle()
                .trim(from: animateStrokeStart ? 1/3 : 1/9, to: animateStrokeEnd ? 2/5 : 1)
                            .stroke(lineWidth: 5)
                .frame(width: 250, height: 250)
                .foregroundColor(Color(red: 0.0, green: 0.588, blue: 1.0))
                .rotationEffect(.degrees(isRotating ? 360 : 0))
                .onAppear() {
                    
                    withAnimation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                    {
                        self.isRotating.toggle()
                    }
                    
                    withAnimation(Animation.linear(duration: 1).delay(0.5).repeatForever(autoreverses: true))
                    {
                        self.animateStrokeStart.toggle()
                    }
                    
                    withAnimation(Animation.linear(duration: 1).delay(1).repeatForever(autoreverses: true))
                                   {
                                       self.animateStrokeEnd.toggle()
                                   }
            }
        }
    }
}

