//
//  PhotoData.swift
//  SwiftUI_HelloWorld
//
//  Created by Shogo Nobuhara on 2021/02/25.
//

import Foundation

// 写真データを配列に入れる
var photoArray:[PhotoData] = makeData()

// 写真データを構造体で定義する
struct PhotoData: Identifiable {
    var id: Int
    var imageName: String
    var title: String
}

// 構造体PhotoData型の写真データが入った配列を作る
func makeData()->[PhotoData] {
    var dataArray:[PhotoData] = []
    dataArray.append(PhotoData(id: 1, imageName: "Yosemite",        title: "Yosemite"))
    dataArray.append(PhotoData(id: 2, imageName: "ElCapitan",       title: "ElCapitan"))
    dataArray.append(PhotoData(id: 3, imageName: "Sierra",          title: "Sierra"))
    dataArray.append(PhotoData(id: 4, imageName: "Height Sierra",   title: "Height Sierra"))
    dataArray.append(PhotoData(id: 5, imageName: "Mojave",          title: "Mojave"))
    dataArray.append(PhotoData(id: 6, imageName: "Catalina",        title: "Catalina"))
    dataArray.append(PhotoData(id: 7, imageName: "BigSur",          title: "BigSur"))
}
