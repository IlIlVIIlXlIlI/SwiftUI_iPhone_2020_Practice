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
            Text("iPhone12 Pro")
                .font(.title)
                .fontWeight(.thin)
                .padding(/*@START_MENU_TOKEN@*/.all, 20.0/*@END_MENU_TOKEN@*/)
                .border(Color.blue,width: 5)
            
            Text("Say Hello to 5G")
                .font(.system(size: 100))
                .foregroundColor(Color.blue)
                .padding()
            Text("5GをProで。どんなスマートフォンのチップよりも飛び抜けて高性能なA14 Bionic。")
                .multilineTextAlignment(.leading)
                .frame(width: 200.0, height: 100.0)
                
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
