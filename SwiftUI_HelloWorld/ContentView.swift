//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

let iPhone = ["iPhone","iPhone3G","iPhone3GS","iPhone4","iPhone4S","iPhone5",
"iPhone6","iPhone6S","iPhone7","iPhone8","iPhoneX","iPhoneXS","iPhone11","iPhone12"]

struct ContentView: View {
    var body: some View {
        
        NavigationView() {
            List(0 ..< iPhone.count) { item in
                HStack {
                    Text(String(item))
                    Text(iPhone[item])
                        .padding()
                }
            }
            .padding(.top)
            .navigationTitle("All iPhone")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
