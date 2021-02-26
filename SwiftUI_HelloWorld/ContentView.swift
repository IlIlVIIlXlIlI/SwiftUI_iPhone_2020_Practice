//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var num:Int = 0
    @State var msg:String = "Thank you!"
    
    var body: some View {
        VStack {
            Button(action: {
                num = Int.random(in: 0...100) // 0-100のランダム
                //print(num)
            }) {
                Text("Random Button")
                    .font(.largeTitle)
                    .frame(width: 280, height: 60, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .foregroundColor(.white)
                    .background(Color.blue)
                    .cornerRadius(15,antialiased: true)
            }
            // 結果を表示するテキスト
            Text("\(num)")
                .font(.largeTitle)
                .padding()
        }
        
        //　タップで文字列を変化させる
        
//        VStack {
//            Button("Tap") {
//                if msg == "Thank you!" {
//                    msg = "ありがとう！"
//                } else {
//                    msg = "Thank you!"
//                }
//
//            }
//            .font(.headline)
//            .foregroundColor(.white)
//            .background(
//                Capsule()
//                    .foregroundColor(.green)
//                    .frame(width: 80, height: 30, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
//            )
//            // 結果の表示
//            Text(msg).padding()
//        }
        
        
        // ラベルを引数Labelで指定する
        
        HStack {
            Text("\(num)")
                .font(.system(size: 50))
                .padding()
            // カウントアップ
            Button("Tap") {
                num += 1
            }
            .font(.largeTitle)
        }
        
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
