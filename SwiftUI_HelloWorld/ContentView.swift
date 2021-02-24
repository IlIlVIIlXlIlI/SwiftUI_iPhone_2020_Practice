//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        List(photoArray) { item in
            RowView(photo: item)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
