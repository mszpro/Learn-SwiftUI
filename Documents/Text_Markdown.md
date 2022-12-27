#  Text (markdown)

[メニューに戻る](/)

マークダウン (Markdown) でテキストを表示する

<img width="300" alt="image" src="/Image/Text-Markdown-demo.png?raw=true">

```swift
import SwiftUI

struct Text_Markdown_Example: View {
    var body: some View {
        Text("In SwiftUI, you can **use markdown**. That means, add ** bold ** or *italic* text; add a [link](apple.com), or a `code block`.")
    }
}

struct Text_Markdown_Example_Previews: PreviewProvider {
    static var previews: some View {
        Text_Markdown_Example()
    }
}
```

## 保存された文字列のマークダウンをレンダリングする

https://qiita.com/MaShunzhe/items/3e52a9e11f9fd4f5cf64

マークダウンテキストがコードに直接存在しない場合 (例えば、変数から、または保存された値から読み取られる場合)、マークダウンとしてレンダリングする必要がある。
拡張関数をStringに追加することができる。

```swift
extension String {
    func getAttributedString() -> AttributedString {
        do {
            let attributedString = try AttributedString(markdown: self)
            return attributedString
        } catch {
            print("Couldn't parse: \(error)")
        }
        return AttributedString("Error parsing markdown")
    }
}
```

そして、テキストをマークダウンで表示するためには：

```swift
Text(itemTextContent.getAttributedString())
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

[メニューに戻る](/)
