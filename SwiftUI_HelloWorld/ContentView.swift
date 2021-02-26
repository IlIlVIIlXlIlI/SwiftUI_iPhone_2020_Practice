//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var iLike: Bool  = true
    @State var isFast: Bool = true
    
    var body: some View {
        
        VStack {
            Toggle(isOn: $iLike) {
                Text("Like or Not")
                    .font(.largeTitle)
            }
            .fixedSize()
            .padding(60)
            
            // 選んだ結果で分岐する
            if iLike {
                Image(systemName: "heart.fill")
                    .font(.system(size: 80))
                    .foregroundColor(.red)
            } else {
                Image(systemName: "heart.slash")
                    .font(.system(size: 80))
                    .foregroundColor(.gray)
            }
        }
        
        
        HStack {
            Button(action: {
                withAnimation {
                    isFast.toggle()
                }
            }){
                // ボタン名の変更
                Text(isFast ? "RUN" : "STOP")
                    .font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                    .foregroundColor(isFast ? .red : .black)
                    .padding(.trailing)
                    .frame(width:100)
                // イメージの変更
                Image(systemName: isFast ? "hare" : "tortoise")
                    .foregroundColor(isFast ? .blue : .green)
                    .rotationEffect(.degrees(isFast ? 0 : 180))
                    .scaleEffect(3)
                    .frame(width:100)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
