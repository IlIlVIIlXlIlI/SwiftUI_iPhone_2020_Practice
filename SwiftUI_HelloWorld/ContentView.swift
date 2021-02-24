//
//  ContentView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/23.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            VStack(alignment: .leading, spacing: 5) {
                Image("Apple_AirPods-Pro_New-Design_102819")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                NavigationLink(
                    destination: SubView()) {
                    Text("AirPods Pro")
                }
                .padding(.bottom,30)
                
                Image("Apple_AirPods-Pro_New-Design-Case-And-AirPods-Pro_102819")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                NavigationLink(
                    destination: SubView2()) {
                    Text("AirPods Pro Case")
                }
                Spacer()
            }
            .navigationTitle("Music")
            .padding(.top,60)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
