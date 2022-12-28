# LazyVGrid

[メニューに戻る](/)

グリッドを使ったデータ表示
`Lazy` グリッドであるため、データはビューが画面に表示されたときにのみ読み込まれます。

<img width="300" alt="image" src="/Image/LazyVStackDemo_cats.png?raw=true">

```swift
import SwiftUI

struct LazyVGridDemo: View {
    
    var gridLayout: [GridItem] {
        .init(repeating: GridItem(.flexible(),
                                  spacing: 10,
                                  alignment: .leading),
              count: 3)
    }
    
    var catPictureLinks: [String] = [
        "https://placekitten.com/200/200",
        "https://placekitten.com/210/210",
        "https://placekitten.com/220/220",
        "https://placekitten.com/230/230",
        "https://placekitten.com/240/240",
        "https://placekitten.com/250/250",
        "https://placekitten.com/260/260",
        "https://placekitten.com/270/270",
        "https://placekitten.com/280/280",
        "https://placekitten.com/290/290",
        "https://placekitten.com/300/300",
    ]
    
    var body: some View {
        
        ScrollView {
            LazyVGrid(columns: gridLayout, alignment: .leading) {
                ForEach(catPictureLinks, id: \.self) { catImgLink in
                    if let catImgURL = URL(string: catImgLink) {
                        AsyncImage(url: catImgURL) { image in
                            image
                                .resizable()
                                .scaledToFit()
                                .cornerRadius(20)
                        } placeholder: {
                            ProgressView()
                        }
                        
                    }
                }
            }
        }
        
    }
    
}

struct LazyVGridDemo_Previews: PreviewProvider {
    static var previews: some View {
        LazyVGridDemo()
    }
}
```

## init

```
var gridLayout: [GridItem] {
    .init(repeating: GridItem(.flexible(),
                              spacing: 10,
                              alignment: .leading),
          count: 3)
}
```

`count` は1つの行に表示されるアイテムの数を定義します。

`.flexible()` は、行内の各アイテムの幅を自由に設定できることを意味します。あるアイテムの幅を大きくすると、他のアイテムは小さい幅で表示されます。また、アイテムの幅を固定にすることもできる。

`spacing` は行の各項目間の余白を定義する。

`alignment` は、行内の各アイテムのアライメントを定義する。

## View modifiers


以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |

[メニューに戻る](/)
