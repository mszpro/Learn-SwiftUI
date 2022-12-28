#  HStack

[メニューに戻る](/)

複数の要素を横並びで表示する

<img width="300" alt="image" src="/Image/HStack.png?raw=true">

```swift
import SwiftUI

struct HStack_Example: View {
    
    var body: some View {
        
        HStack {
            
            Image(systemName: "star.fill")
                .font(.largeTitle)
                .foregroundColor(.yellow)
            
            Image(systemName: "wand.and.stars")
                .font(.largeTitle)
                .foregroundColor(.blue)
            
        }
        
    }
    
}

struct HStack_Example_Previews: PreviewProvider {
    static var previews: some View {
        HStack_Example()
    }
}
```

## init

HStack(alignment: .leading)

`alignment`: HStack内の要素を左側（.leading）、中央（.center）、右側（.trailing）のいずれに配置するかを制御する。

## View modifiers

以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |

[メニューに戻る](/)
