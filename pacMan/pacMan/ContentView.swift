//
//  ContentView.swift
//  pacMan
//
//  Created by Iwin Yeung on 1/10/20.
//  Copyright © 2020 Iwin Yeung. All rights reserved.
//

import SwiftUI


struct ContentView: View {
    @ State private var intoMouth = false
    @ State private var openUpper = false
    @ State private var openLower = false

    var body: some View {

        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.purple, Color.black]), center:
            .center, startRadius: 5, endRadius: 500)
            .scaleEffect(1.2)
            ZStack{
                Circle() //body
                .frame(width: 5)
                .foregroundColor(.white)
                .offset(x: intoMouth ? 20 : 85 , y: 5)
                .animation(Animation.easeInOut(duration: 0.5).repeatForever(autoreverses:false))
                .onAppear() {
                    self.intoMouth.toggle()
                    
                }
                Circle() //Upper
                .trim(from: 1/3, to: openLower ? 0.9999 : 0.95)
                .frame(width: 100, height: 100)
                .rotationEffect(.degrees(0))
                .foregroundColor(.yellow)
                .animation(Animation.easeInOut(duration: 0.2).repeatForever(autoreverses:true))
                .onAppear() {
                    self.openUpper.toggle()
                }
                Circle() //Lower
                    .trim(from: 1/3, to: openLower ? 0.9999 : 0.9)
                    .frame(width: 100, height: 100)
                    .rotationEffect(.degrees(180))
                    .foregroundColor(.yellow)
                    .rotation3DEffect(.degrees(180), axis: (x: 0, y:1, z:0))
                    .animation(Animation.easeInOut(duration: 0.2).repeatForever(autoreverses:true))
                    .onAppear() {
                        self.openLower.toggle()
                }
            
            Circle()
                .frame(width: 15)
                .offset(x:15, y:-25)
        }
    }

}
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
