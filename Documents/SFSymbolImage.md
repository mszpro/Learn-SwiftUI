#  Image (SF Symbol)

[メニューに戻る](/)

SFシステム画像を表示

https://developer.apple.com/sf-symbols/

<img width="300" alt="image" src="/Image/SFSymbolImage.png?raw=true">

```swift
import SwiftUI

struct SFSymbolImage_Example: View {
    
    var body: some View {
        
        Image(systemName: "wand.and.stars")
            .font(.largeTitle)
            .foregroundColor(.blue)
        
    }
    
}

struct SFSymbolImage_Example_Previews: PreviewProvider {
    static var previews: some View {
        SFSymbolImage_Example()
    }
}
```

## View modifiers
 
| 変数名 | 使用法 |
|---|---|
| .font(.system(size: 60)) | システムシンボルイメージのサイズを変更する |
| .foregroundColor(.blue) | 色を変更 |

以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |
| .onTapGesture | ユーザーがビューをタップしたときにアクションを実行する |

[メニューに戻る](/)
