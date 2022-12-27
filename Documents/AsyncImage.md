#  AsyncImage

[メニューに戻る](/)

URLを入力し、インターネットから画像を読み込む。
また、ダウンロードした画像のUIをカスタマイズしたり、
画像ダウンロード中に読み込み中のインジケータを表示することも可能です。

<img width="300" alt="image" src="/Image/AsyncImage_demo.png?raw=true">

```swift
import SwiftUI

struct AsyncImageDemo: View {
    var body: some View {
        AsyncImage(url: URL(string: "https://placekitten.com/1200/1200")) { loadedImage in
            loadedImage
                .resizable()
                .scaledToFit()
                .cornerRadius(20)
                .frame(width: 300, height: 300)
        } placeholder: {
            ProgressView()
        }

    }
}

struct AsyncImageDemo_Previews: PreviewProvider {
    static var previews: some View {
        AsyncImageDemo()
    }
}

```

## View modifiers
 
これらのビューモディファイアは、コードブロック内でダウンロードされた画像オブジェクト (`loadedImage`) に適用されます。
 
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
