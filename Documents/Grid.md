#  Grid

[メニューに戻る](/)

グリッド(格子)

<img width="300" alt="image" src="/Image/grid-demo.jpeg?raw=true">

```swift
import SwiftUI

struct Grid_demo: View {
    
    var body: some View {
        
        Grid(horizontalSpacing: 20, verticalSpacing: 20) {
            
            GridRow {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                    .gridCellColumns(2) // this means this view element will be treated as 2 cell columns.
            }
            
            GridRow {
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
                
                RoundedRectangle(cornerSize: .init(width: 20, height: 20))
                    .frame(width: 150, height: 150)
                    .foregroundColor(.blue)
            }
            
        }
        
    }
    
}

struct Grid_demo_Previews: PreviewProvider {
    static var previews: some View {
        Grid_demo()
    }
}
```

## init

`horizontalSpacing` は水平方向の要素間の間隔を定義します。
`verticalSpacing` は垂直方向の要素間の間隔を定義します。

`Grid` 内では、 `GridRow` を使用してコンテンツの行を定義することができます。
各行には、複数の要素 (1つの行に水平に表示される要素) を配置することができます。

## View modifiers
 
以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |

[メニューに戻る](/)
