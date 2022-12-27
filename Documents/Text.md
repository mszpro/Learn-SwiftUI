#  Text

画面上にテキストを表示する。テキストは複数行にすることができます。

<img width="300" alt="image" src="/Image/Text.png?raw=true">

```swift
import SwiftUI

struct Text_Example: View {
    var body: some View {
        Text("Hello, World!")
            .font(.title)
    }
}

struct Text_Example_Previews: PreviewProvider {
    static var previews: some View {
        Text_Example()
    }
}
```

## View modifiers
 
| 変数名 | 使用法 |
|---|---|
| .font(.headline) | 文字のフォントを変更 |
| .foregroundColor(.blue) | オブジェクトの色を変更 |
| .bold() | テキストを太字で表示する |

以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |
| .onTapGesture | ユーザーがビューをタップしたときにアクションを実行する |
