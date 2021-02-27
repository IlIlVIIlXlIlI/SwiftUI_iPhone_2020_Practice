//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    
    @State private var selectedColor = 0
    let colorViews = [Color.red,Color.green,Color.blue]
    let colorNames = ["Red","Green","Blue"]
    
    var body: some View {
        VStack {
            Picker(selection: $selectedColor, label: Text("Color")) {
                Text("Red").tag(0)
                Text("Green").tag(1)
                Text("Blue").tag(2)
            }
            
            HStack {
                colorViews[selectedColor]
                    .frame(width: 50,height: 100)
                Text("Value: \(selectedColor)")
                    .frame(width: 70)
                Text("\(colorNames[selectedColor])")
                    .frame(width: 70)
            }
            
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
