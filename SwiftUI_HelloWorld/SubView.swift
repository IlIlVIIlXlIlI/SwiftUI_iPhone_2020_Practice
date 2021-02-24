//
//  SubView.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/25.
//

import SwiftUI

struct SubView: View {
    var body: some View {
        VStack {
            Image("Apple_AirPods-Pro_New-Design_102819")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("AirPods Pro")
                .padding()
            Text("アクティブノイズキャンセリングでサウンドに包まれよう。")
        }
        .padding()
        .navigationTitle(Text("AirPods Pro"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView2: View {
    var body: some View {
        VStack {
            Image("Apple_AirPods-Pro_New-Design-Case-And-AirPods-Pro_102819")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("AirPods Pro")
                .padding()
            Text("これまでのAirPodsと同様に、iPhoneやApple Watchとの接続は簡単。まるで魔法のようです。")
            
            Image("Apple_AirPods-Pro_Expanded_102819")
                .resizable()
                .aspectRatio(contentMode: .fit)
            Text("AirPods Pro")
            
        }
        .padding()
        .navigationTitle(Text("AirPods Pro"))
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct SubView_Previews: PreviewProvider {
    static var previews: some View {
        SubView()
    }
}
