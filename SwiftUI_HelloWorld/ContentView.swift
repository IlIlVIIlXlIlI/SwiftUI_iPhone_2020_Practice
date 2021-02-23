//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        List {
            Text("Content")
            Text("Content")
            Photo1().frame(height: 150)
            Text("Content")
            Text("Content")
            Photo2().frame(height: 150)
        }
    }
}


// 写真1
struct Photo1: View {
    var body: some View {
        HStack {
            Image("Apple_watch-series-6-aluminum-blue-case_09152020")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Blue Alluminium")
                .padding(.horizontal)
        }
    }
}

// 写真2
struct Photo2: View {
    var body: some View {
        HStack {
            Image("Apple_watch-series-6-aluminum-red-case_09152020")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("Red Alluminium")
                .padding(.horizontal)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
