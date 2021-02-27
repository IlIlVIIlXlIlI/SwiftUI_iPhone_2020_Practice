//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State var selectedSize = 2
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
                    selectedColor = colors.count/2
                })
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
