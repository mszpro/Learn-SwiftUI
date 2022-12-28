#  ZStack

[メニューに戻る](/)

奥行き配置（前後）

<img width="300" alt="image" src="/Image/ZStack.png?raw=true">

```swift
import SwiftUI

struct ZStack_Example: View {
    
    var body: some View {
        
        ZStack {
            
            Circle()
                .frame(width: 100, height: 100)
                .foregroundColor(.blue)
            
            Image(systemName: "wand.and.stars")
                .font(.system(size: 28))
                .foregroundColor(.white)
            
        }
        
    }
    
}

struct ZStack_Example_Previews: PreviewProvider {
    static var previews: some View {
        ZStack_Example()
    }
}
```

## View modifiers


以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |
| .onTapGesture | ユーザーがビューをタップしたときにアクションを実行する |

[メニューに戻る](/)
