//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    @State var isShow = true
    @State var opaValue = 1.0
    @State var btnText = "消す"
    
    var body: some View {
        VStack {
            Button(action: {
                isShow.toggle()
                btnText = isShow ? "消す" : "表示する"
                withAnimation(.easeInOut(duration: 2)){
                    opaValue = isShow ? 1.0 : 0.0
                }
            }) {
                Text(btnText).font(.title2)
            }
            // 写真
            Image("apple2020")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .opacity(0.5)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
