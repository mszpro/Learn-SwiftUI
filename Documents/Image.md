#  Image (ローカル)

[メニューに戻る](/)

ローカルファイル、またはUIImage、NSImageオブジェクトからの画像を表示する。

<img width="300" alt="image" src="/Image/LocalImage.png?raw=true">

```swift
import SwiftUI

struct LocalImage_Example: View {
    
    var body: some View {
        
        Image("kitty")
            .resizable()
            .frame(width: 100, height: 100)
        
    }
    
}

struct LocalImage_Example_Previews: PreviewProvider {
    static var previews: some View {
        LocalImage_Example()
    }
}
```

## Initialization

`Image("kitty")`

`Image(uiImage: UIImage(named: "kitty")`

`Image(systemName: "checkmark.circle")`

`Image(nsImage: NSImage(...))`

## View modifiers
 
| 変数名 | 使用法 |
|---|---|
| .resizable() | 限られたスペースに表示されるように、UIに画像のリサイズを指示する。これは、最初のビューモディファイアとして配置されなければなりません。常にこれを追加する必要があります。 |
| .scaledToFit() | コンテナ内に納まるように画像を拡大縮小します。コンテナサイズが画像サイズより大きい場合、画像の周りに空白ができることがあります。 |
| .scaledToFill() | この場合、コンテナ内で利用可能なすべてのスペースが満たされます。ただし、画像サイズがコンテナサイズより大きい場合、画像が切り取られることがあります。|
| .frame(width: 100, height: 100) | フレームを指定する |
| .cornerRadius(20) | 画像に角丸を追加 |


以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |
| .onTapGesture | ユーザーがビューをタップしたときにアクションを実行する |

[メニューに戻る](/)
