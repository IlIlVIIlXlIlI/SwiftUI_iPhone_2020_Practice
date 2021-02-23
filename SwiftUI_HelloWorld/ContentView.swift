//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("m1")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width:300.0)
                .rotationEffect(.degrees(20))
                .overlay(
                    Text("Hello, world!")
                        .foregroundColor(.white)
                        .font(.system(size: 30))
                        .padding(.top,150)

                )
        }
        
        VStack {
            Circle()
                .foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
                .frame(width: 200, height: 300)
            
            Ellipse()
                .foregroundColor(.yellow)
                .frame(width: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Rectangle()
                .foregroundColor(.green)
                .frame(width: 300, height: 200)
            
            Capsule()
                .foregroundColor(.purple)
                .frame(width: 300, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
