# SwiftUI_ContentsTheArrayPhoto


### 変数photoArrayのアクセス権<br>
今回は複数のファイルからアクセスできる変数を使った。<br>
internal var photoArray:[PhotoData] = makeData()<br>　　
open        : モジュール外からでも自由にアクセスできる<br>
public      : モジュール外からアクセスできるが、継承とoverrideができない<br>
internal    : 同一モジュール内なら他のファイルからでもアクセスできる(初期値)<br>
fileprivate : 同一ファイル内でのみアクセスできる<br>
private     : 定義されたスコープ内でのみアクセスできる<br>　　

<img width="329" alt="スクリーンショット 2021-02-25 2 21 29" src="https://user-images.githubusercontent.com/9380171/109039516-38240980-7710-11eb-81ec-9a41e8125e85.png">
