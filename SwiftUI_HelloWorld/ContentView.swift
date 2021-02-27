//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedSize = 0
    @State var selectedColor = 0
    let sizes = ["XS","S","M","L","LL"]
    let colors = ["Red","Green","Blue","Yellow","Pink","White"]
    
    var body: some View {
        VStack {
            HStack {
                // sizeのピッカー
                Picker(selection: $selectedSize, label: Text("Size"), content: {
                    ForEach(0..<sizes.count) { index in
                        Text(sizes[index])
                    }
                })
                .frame(width: 150)
                .padding(.horizontal,10)
                .clipped()
                
                // Colorのピッカー
                Picker(selection: $selectedColor, label: Text("Color"), content: {
                    ForEach(0..<colors.count) { index in
                        Text(colors[index])
                    }
                })
                .frame(width: 150)
                .padding()
                .clipped()
                .onAppear(perform: {
                    selectedSize = sizes.count/2
                    selectedColor = colors.count/2
                })
            }
            // 結果の表示
            HStack {
                Text("size: \(sizes[selectedSize])")
                    .padding(.horizontal,40)
                Text("color: \(colors[selectedColor])")
                    .padding(.horizontal,30)
            }
            .foregroundColor(Color.white)
            .font(.title2)
            .background(RoundedRectangle(cornerRadius: 20)
                            .frame(width: 340, height:  50)
                            .foregroundColor(Color.green)
            )
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
