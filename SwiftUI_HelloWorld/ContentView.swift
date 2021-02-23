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
            VStack(alignment: .leading, spacing: 15.0) {
                Text("Macintosh")
                Text("iPhone")
                Text("iPad")
                Text("Apple Watch")
                    .italic()
                    .offset(x: -50, y: 0)
            }
            .padding(.all)
            
            
            VStack(alignment: .trailing, spacing: 15.0) {
                Text("Macintosh")
                Text("iPhone")
                Text("iPad")
                Text("Apple Watch")
            }
            .padding(.all)
            .padding(.top,50)
            
            
            VStack {
                Text("Apple")
                    .font(.system(size: 70))
                Text("Designed by Callfornia")
                    .italic()
                    .offset(x: 50, y: 0)
                    .padding(.top,5)
            }
            .padding(100)
        }
        
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
