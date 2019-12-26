//
//  ContentView.swift
//  Fifty Shades of Colors
//
//  Created by Iwin Yeung on 12/14/19.
//  Copyright © 2019 Iwin Yeung. All rights reserved.
//

/*
 Fifty Shades of Colors is my first ever app that displays gradients of red, yellow, and blue when each box is pressed. Though simple, it is an elegant app that uses the NavigationLink feature and vertical, horizonal, and z-direction stacking to demonstrate the use of the storyboard and Xcode features.
 */
import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack{
            NavigationLink(destination:DetailView_red()) {
                ZStack{
                            RoundedRectangle(cornerRadius:15)
                                .frame(width: 300.0, height:150 )
                                .foregroundColor(.pink)
                                .padding()
                            Text("Fifty Shades of Lipstick")
                                .foregroundColor(Color.white)
                            }
                                .background(Color.pink)
                                .cornerRadius(12)
                                .navigationBarTitle(Text("50 Shades of Color"))
                            }
            NavigationLink(destination:DetailView_yellow()) {
                ZStack{
                            RoundedRectangle(cornerRadius:15)
                                .frame(width: 300, height:150 )
                                .foregroundColor(.yellow)
                                .padding()
                            Text("Fifty Shades of Lemon")
                                .foregroundColor(Color.white)
                            }
                                .background(Color.yellow)
                                .cornerRadius(12)
                                .navigationBarTitle(Text("50 Shades of Color"))
                            }
           NavigationLink(destination:DetailView_blue()) {
                ZStack{
                            RoundedRectangle(cornerRadius:15)
                                .frame(width: 300, height:150 )
                                .foregroundColor(.blue)
                                .padding()
                            Text("Fifty Shades of Winter")
                                .foregroundColor(Color.white)
                            }
                                .background(Color.blue)
                                .cornerRadius(12)
                                .navigationBarTitle(Text("50 Shades of Color"))
                            }
                
                        }
                    }
            }
}
struct DetailView_red: View{
    var body:some View{
        NavigationView{
             VStack{
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.pink]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
struct DetailView_yellow: View{
    var body:some View{
        NavigationView{
             VStack{
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.yellow]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
        }
    }
}
struct DetailView_blue: View{
    var body:some View{
        NavigationView{
             VStack{
                LinearGradient(gradient: Gradient(colors: [Color.white, Color.blue]), startPoint: /*@START_MENU_TOKEN@*/.top/*@END_MENU_TOKEN@*/, endPoint: /*@START_MENU_TOKEN@*/.bottom/*@END_MENU_TOKEN@*/)
            }
        }
    }
}

//struct ContentView_Previews: PreviewProvider {
//    static var previews: some View {
//        ContentView()
//    }
//}
