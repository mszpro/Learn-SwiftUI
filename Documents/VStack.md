#  VStack

[メニューに戻る](/)

複数の要素を縦に並べて表示する

<img width="300" alt="image" src="/Image/VStack.png?raw=true">

```swift
import SwiftUI

struct VStack_Example: View {
    
    var body: some View {
        
        VStack(alignment: .center) {
            
            Text("Hello, World!")
                .padding()
            
            Button(action: {
                print("1")
            }) {
                Text("ボタン 1")
            }
            .padding()
            
            Button(action: {
                print("2")
            }) {
                Text("ボタン 2")
            }
            .padding()
            
        }
        
    }
    
}

struct VStack_Example_Previews: PreviewProvider {
    static var previews: some View {
        VStack_Example()
    }
}
```

## init

VStack(alignment: .center)

`alignment`: VStack内の要素を左側（.leading）、中央（.center）、右側（.trailing）のいずれに配置するかを制御する。

## View modifiers

以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |

[メニューに戻る](/)
