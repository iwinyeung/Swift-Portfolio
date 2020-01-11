//
//  ContentView.swift
//  XYZspinner
//
//  Created by Iwin Yeung on 1/10/20.
//  Copyright © 2020 Iwin Yeung. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @ State private var xAxisRotation = false
    @ State private var yAxisRotation = false
    @ State private var zAxisRotation = false
    var body: some View {
        ZStack {
           
            RadialGradient(gradient: Gradient(colors: [Color.white, Color.gray]), center:
                .center, startRadius: 5, endRadius: 500)
                .scaleEffect(1.2)
//            Text("Rotation along X, Y, & Z")
//                .offset(y: -200)
//                .font(.largeTitle)
//                .foregroundColor(.white)
            
            VStack(alignment: .center, spacing: 150) {
                Text("Rotation along X  Y & Z")
                .offset(y: -15)
                .font(.largeTitle)
                .foregroundColor(.white)
                
                VStack {
                    ZStack {  // X
                        Image("x")
                            .offset(x: 5, y: 0)
                        
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(xAxisRotation ? 360*4 : 0), anchor: .center)
                            .rotation3DEffect(.degrees(80), axis: (x: 0, y: 1, z: 0))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.xAxisRotation.toggle()
                        }
                    }
                    Text("")
                        .offset(y: 20)
                    .font(.largeTitle)
                }
                
                VStack {
                    ZStack {  // Y
                        Image("y")
                            .offset(x: 0, y: -5)
                                
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(yAxisRotation ? 360*4 : 0), anchor: .center)
                            .rotation3DEffect(.degrees(80), axis: (x: 1, y: 0, z: 0))
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                                .onAppear() {
                                            self.yAxisRotation.toggle()
                                    }
                    }
                    
                    Text("")
                    .font(.largeTitle)
                }
                
                VStack {
                    ZStack {  // Z
                        Circle()
                            .frame(width: 10, height: 10)
                            .opacity(0.5)
                                
                        Image(systemName: "arrow.left.and.right.circle.fill")
                            .font(.largeTitle)
                            .opacity(0.5)
                            .rotationEffect(.degrees(zAxisRotation ? 360*4 : 0), anchor: .center)
                            .animation(Animation.linear(duration: 1).repeatForever(autoreverses: false))
                            .onAppear() {
                                self.zAxisRotation.toggle()
                        }
                    }
                    Text("")
                        .offset(y: 20)
                    .font(.largeTitle)
                }
            }
        }
    }
}
