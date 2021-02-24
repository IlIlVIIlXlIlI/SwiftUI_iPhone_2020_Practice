//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

let iPhone = ["iPhone","iPhone3G","iPhone3GS","iPhone4","iPhone4S","iPhone5",
"iPhone6","iPhone6S","iPhone7","iPhone8","iPhoneX","iPhoneXS","iPhone11","iPhone12"]

let appleWatch = ["Apple Watch","Apple Watch Series1","Apple Watch Series2","Apple Watch Series3","Apple Watch Series4","Apple Watch Series5","Apple Watch Series6","Apple Watch Series SE"]

struct ContentView: View {
    var body: some View {
        
        List {
            Section(header: Text("iPhone").font(.largeTitle).padding(.top),
                    footer: Text("Designed by Callfornia")) {
                ForEach(0..<iPhone.count) { index in
                    Text(iPhone[index])
                }
            }
            
            Section(header: Text(" Watch").font(.largeTitle).padding(.top),
                    footer: Text("Designed by Callfornia")) {
                ForEach(0..<appleWatch.count) { index in
                    Text(appleWatch[index])
                }
            }
        }
        .listStyle(GroupedListStyle())
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
