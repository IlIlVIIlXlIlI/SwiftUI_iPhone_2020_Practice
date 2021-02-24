# SwiftUI_ContentsTheArrayPhoto

変数photoArrayのアクセス権　　
internal var photoArray:[PhotoData] = makeData()　　

open        : モジュール外からでも自由にアクセスできる　　
public      : モジュール外からアクセスできるが、継承とoverrideができない　　
internal    : 同一モジュール内なら他のファイルからでもアクセスできる(初期値)　　
fileprivate : 同一ファイル内でのみアクセスできる　　
private     : 定義されたスコープ内でのみアクセスできる　　

<img width="329" alt="スクリーンショット 2021-02-25 2 21 29" src="https://user-images.githubusercontent.com/9380171/109039516-38240980-7710-11eb-81ec-9a41e8125e85.png">
