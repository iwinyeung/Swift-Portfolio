//
//  ContentView.swift
//  rectangleLoader
//
//  Created by Iwin Yeung on 1/10/20.
//  Copyright © 2020 Iwin Yeung. All rights reserved.
//
import SwiftUI
struct ContentView: View {
    @State private var rotateRect = false
    @State private var fillRect = true
    @State private var chromaShift = false
    @State private var slide = false
    var body: some View {
        ZStack {
            RadialGradient(gradient: Gradient(colors: [Color.white, Color.green]), center: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/, startRadius: /*@START_MENU_TOKEN@*/5/*@END_MENU_TOKEN@*/, endRadius: /*@START_MENU_TOKEN@*/500/*@END_MENU_TOKEN@*/)
                .scaleEffect(1.2)
            VStack {
                Text("Loading...")
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .foregroundColor(.green)
                    .hueRotation(.degrees(chromaShift ? 0 : 720))
                .animation(Animation.linear(duration: 4).repeatForever(autoreverses: true))
                    .onAppear() {
                        self.chromaShift.toggle()
                                 }
                Rectangle()
                    .frame(width: 100, height: 150)
                    .scaleEffect(x: 1, y: fillRect ? 0.05 : 1, anchor: .bottom)
                    .foregroundColor(.green)
                    .border(Color.green, width: 5)
                .cornerRadius(10)
                    .onAppear() {
                        withAnimation(Animation.easeInOut(duration: 4).repeatForever(autoreverses: false).speed(0.1)) {
                            self.fillRect.toggle()
                        }
                    }
            }.rotationEffect(.degrees(rotateRect ? 0 : 15), anchor: .bottom)
                .animation(Animation.spring(response: 1, dampingFraction: 0.3, blendDuration: 0).repeatForever(autoreverses: false))
                .shadow(radius: 0.2)
                .scaleEffect(0.5)
            .onAppear() {
                self.rotateRect.toggle()
            }
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
