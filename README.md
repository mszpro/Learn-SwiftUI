#  SwiftUIコンポーネントのまとめ

これは、`SwiftUI` のビュー要素のコレクションです。

URL: https://SwiftUI.MszPro.com

## @MszPro

個人アプリ開発の最新情報、
iOSプログラミングやSwiftUIに関する記事、
美しい写真やアニメの絵などを掲載しています
ぜひフォローをお願いします。

[🐘 マストドン @me@mszpro.com](https://sns.mszpro.com/@me)

[☺️ Twitter @MszPro](https://twitter.com/MszPro)

[☺️ サイト] <https://MszPro.com>

<img width="150" src="https://cdn.mszmagic.com/static-web-content/AppClipImage_small.png">

## Updates

Latest update: 2022-12-27 (Tuesday)

⚡️このページでは、
より多くのビューモディファイアの例を更新中です。
キャッシュの関係で、手動で再読み込みボタンをクリックして、最新版を読み込んでください。

☺️しばらくお待ちください。

# 文字

| [Text](/Documents/Text) | [Text (markdown)](/Documents/Text_Markdown) |
|---|---|
| 文字を表示 | マークダウンでテキストを表示する |
| <img width="300" alt="image" src="/Image/Text.png?raw=true"> | <img width="300" alt="image" src="/Image/Text-Markdown-demo.png?raw=true"> |
| [コード例を見る](/Documents/Text) | [コード例を見る](/Documents/Text_Markdown) |

<br>

# 画像

| [Image (ローカル)](/Documents/Image) | [Image (SF Symbol)](/Documents/SFSymbolImage) | [AsyncImage](/Documents/AsyncImage) |
|---|---|---|
| 画像を表示 | SFシステム画像を表示 | インターネットから画像を読み込む |
| <img width="300" alt="image" src="/Image/LocalImage.png?raw=true"> | <img width="300" alt="image" src="/Image/SFSymbolImage.png?raw=true"> | <img width="300" alt="image" src="/Image/AsyncImage_demo.png?raw=true"> |
| [コード例を見る](/Documents/Image) | [コード例を見る](/Documents/SFSymbolImage) | [コード例を見る](/Documents/AsyncImage) |

<br>

# 画面に複数の要素を表示

上記ビューの複数を1つのビューに組み合わせて表示できます。

| [HStack](/Documents/HStack) | [VStack](/Documents/VStack) | [Form](/Documents/Form) |
|---|---|---|
| 水平配置 | 垂直配置 | ログインフォームの例 |
| <img width="300" alt="image" src="/Image/HStack.png?raw=true"> | <img width="300" alt="image" src="/Image/VStack.png?raw=true"> | <img width="300" alt="image" src="/Image/LoginForm.png?raw=true"> |
| [コード例を見る](/Documents/HStack) | [コード例を見る](/Documents/VStack)  | [コード例を見る](/Documents/Form) |
 
| ZStack | Grid | LazyVGrid |
|---|---|---|
| 奥行き配置（前後） | グリッド(格子) | グリッドにデータをロードする |
| <img width="300" alt="image" src="/Image/ZStack.png?raw=true"> | <img width="300" alt="image" src="/Image/grid-demo.jpeg?raw=true"> | <img width="300" alt="image" src="/Image/LazyVStackDemo_cats.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ZStack_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Grid_demo.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/LazyVGridDemo.swift) |
| - | >= iOS 16 | - |
| - | - | - |

<br>

# フォーム入力

| Form |
|---|
| <img width="300" alt="image" src="/Image/FormList.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/FormList_Example.swift) |
| - |
| - |

| Toggle | TextField |
|---|---|
| ユーザーが機能をオン/オフできるようにする | 編集可能なテキストフィールド |
| <img width="300" alt="image" src="/Image/Toggle.png?raw=true"> | <img width="300" alt="image" src="/Image/TextEditor.png?raw=true"> |
|  [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Toggle_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/TextField_Example.swift) |
| - | - | - |
| - | - | - |

| TextField (.axis) | SecureField | TextEditor |
|---|---|---|
| 複数行のテキストフィールド | パスワード入力用 | 長い文字列を表示して編集 |
| <img width="300" alt="image" src="/Image/multi-line-textfield-demo.png?raw=true"> | <img width="300" alt="image" src="/Image/SecureField.png?raw=true"> | <img width="300" alt="image" src="/Image/TextEditor.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/TextField_MultiLine_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/SecureTextField_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/TextEditor_Example.swift) |
| >= iOS 16 | - |
| - | - |


| Stepper | Slider |
|---|---|
| 値を増減 | 値を増減 |
| <img width="300" alt="image" src="/Image/Stepper.png?raw=true"> | <img width="300" alt="image" src="/Image/Slider-demo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Stepper_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Slider_Example.swift) |
| - | - |
| - | - |

<br>

# ピッカー / 選択

| Picker |
|---|
| 指定したオプションから1つの値を選択 |
| <img width="300" alt="image" src="/Image/Picker.png?raw=true"> | <img width="300" alt="image" src="/Image/TextField.png?raw=true">  |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Picker_Example.swift) |
| - |
| - |

| ColorPicker | DatePicker | MultiDatePicker |
|---|---|---|
| 色を選択できるようにします。 | 日付を選択します | 複数日付選択ツール |
| <img width="300" alt="image" src="/Image/ColorPicker.png?raw=true"> | <img width="300" alt="image" src="/Image/DatePicker.png?raw=true"> | <img width="300" alt="image" src="/Image/multi_date_picker.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ColorPicker_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/DatePicker_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/MultipleDatePicker.swift) |
| - | - | > iOS 16 |
| - | - | - |

<br>

# 表

| List | ForEach |
|---|---|
| <img width="300" alt="image" src="/Image/List.png?raw=true"> | <img width="300" alt="image" src="/Image/List.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/List_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ForEachList_Example.swift) |
| - | - |
| - | - |

<br>

# ナビゲート

| NavigationStack | NavigationSplitView |
|---|---|
| ナビゲーションを追加する | サイドバーメニューを含むナビゲーションを追加する |
| <img width="300" alt="image" src="/Image/NavigationView.png?raw=true"> | <img width="300" alt="image" src="/Image/NavigationSplitView-demo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/NavigationStack_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/NavigationSplitView_Example.swift) |
| >= iOS 16 | >= iOS 16 |
|  - |  - |

| ToolbarItem |
|---|
| バーにアイテムを表示します |
| <img width="300" alt="image" src="/Image/BarItem.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ToolBar_Example.swift) |
|  - |
|  - |

| NavigationView | 
|---|
| ナビゲーションビュー内に自前のViewを埋め込み | 
| <img width="300" alt="image" src="/Image/NavigationView.png?raw=true"> | 
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/NavigationView_Example.swift) |
| DEPRECATED 廃止された < iOS 16 |
| - |

<br>

# アクションを実行するには/ユーザーに別のビューを表示するには

| Button | NavigationLink | sheet |
|---|---|---|
| クリックしてアクションを実行 | クリックして別のビューに移動 | ビューシートを表示 |
| <img width="300" alt="image" src="/Image/Button.png?raw=true"> | <img width="300" alt="image" src="/Image/NavigationLink.png?raw=true"> | <img width="300" alt="image" src="/Image/PresentedSheet.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ButtonAction_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/NavigationLink_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ButtonSheet_Example.swift)  [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ButtonItemSheet_Example.swift) |
| - | - | - |
| - | - | - |
 
 <br>
 
# タブビュー

| TabView |
|---|
| 画面の最下部にタブバーを表示 |
| <img width="300" alt="image" src="/Image/TabBar.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/TabView_Example.swift) |
| - |
 | - |
 
 <br>
 
# 地図

| Map |
|---|
| アノテーション付きマップ |
| <img width="300" alt="image" src="/Image/Map.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Map_Example.swift) |
| - |
| - |

<br>

# チャート

```swift
import Charts
```

Qiita記事
[WWDC22、iOS 16：SwiftUIでChartsフレームワークを使ってチャートを作成](https://qiita.com/MaShunzhe/items/cae62af8b07f4f474fd8)

| Chart + PointMark |　Chart + LineMark + PointMark | Chart + BarMark |
|---|---|---|
| ポイント チャート | 折れ線グラフ | 棒グラフ |
| <img width="300" alt="image" src="/Image/point_chart_demo.png?raw=true"> | <img width="300" alt="image" src="/Image/line_chart_demo.png?raw=true"> | <img width="300" alt="image" src="/Image/bar_chart_demo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Charts_Single.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Charts_PointLine.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Charts_BarChart.swift) |
| >= iOS 16 | >= iOS 16 | >= iOS 16 |
| - | - | - |

| Chart + AreaMark + LineMark | Charts with multiple data set |
|---|---|
| 面グラフ | 1つのグラフの中に複数のデータを表示することができます。例えば、2ヶ所の天気を比較することができます。 |
| <img width="300" alt="image" src="/Image/area_mark_demo.png?raw=true"> | <img width="300" alt="image" src="/Image/charts_multiple_datasets_demo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Charts_AreaMark.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Charts_Multiple.swift) |
| >= iOS 16 | >= iOS 16 |
| - | - |

<br>

# レイアウト

| DisclosureGroup | GroupBox |
|---|---|
| コンテンツを表示および非表示 | 角丸のボックス内にタイトルとコンテンツビューを表示 |
| <img width="300" alt="image" src="/Image/DisclosureGroup.png?raw=true"> | <img width="300" alt="image" src="/Image/GroupBoxDemo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/DisclosureGroup_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/GroupBoxExample.swift) |
| - | - |
| - | - |

| ScrollView(.horizontal) | ScrollView(.verticle) |
|---|---|
| 水平方向にスクロールできるようにする | 縦方向にスクロールできるようにする |
| <img width="300" alt="image" src="/Image/horizontal-scrollview.png?raw=true"> | <img width="300" alt="image" src="/Image/verticle-scrollview.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/HorizontalScrollViewDemo.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/VerticleScrollViewDemo.swift) |
| - | - |
| - | - |

<br>

# アラート / アクションシート

| Alert | Alert + TextField | ActionSheet |
|---|---|---|
| アラートウィンドウを表示 | 入力用のテキストフィールドを持つアラートを表示 | アクションシートを画面の最下部に表示 |
| <img width="300" alt="image" src="/Image/Alert.png?raw=true"> | <img width="300" alt="image" src="/Image/alert-with-textfield-demo.jpeg?raw=true"> | <img width="300" alt="image" src="/Image/ActionSheet.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Alert_Example.swift) [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/AlertItems_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Alert_withTextField_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ActionSheet_Example.swift) |
| - | >= iOS 16 | - |
| - | - | - |

<br>

# 進捗状況を表示するビュー

| ProgressView | Gauge |
|---|---|
| 進捗状況を表示 | 円形スタイル、または直線スタイルで進捗状況を表示 |
| <img width="300" alt="image" src="/Image/ProgressView.png?raw=true"> | <img width="300" alt="image" src="/Image/gauge_with_color.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ProgressView_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Gauge_ProgressDisplay.swift) |
| - | > iOS 16 |
| - | - [Qiita](https://qiita.com/MaShunzhe/items/0ed36d8a6de7c56b1d34#gauge---進捗状況を表示する新しいビュー) |

<br>

# Features

| Sign in with Apple | PhotosPicker | ShareLink |
|---|---|---|
| Appleでサインイン | 写真選択ツール | 共有シート |
| <img width="300" alt="image" src="/Image/SignInWithApple.png?raw=true"> | <img width="300" alt="image" src="/Image/photo-picker-demo.png?raw=true"> | <img width="300" alt="image" src="/Image/share-sheet-demo.png?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/SignInWithAppleButton_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/PhotosPicker_Demo.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/ShareSheet_Demo.swift) |
| - | >= iOS 16 | >= iOS 16 |
| - | - | - |

| PasteButton |
|---|
| ペーストボードからデータ（画像など）を読み込む |
| <img width="300" alt="image" src="/Image/PasteButtonDemo.jpeg?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/DataPasteButton.swift) |
| >= iOS 16 |
| - |
 
<br>
 
#  UIKit + SwiftUI
 
##  UIHostingController
 
 UIHostingControllerを使用して、UIKitビュー内にSwiftUIビューを表示することも可能です。
 
 ```swift
 let swiftuiView = Map_Example()
 let uiKitViewController = UIHostingController(rootView: swiftuiView)
 self.present(uiKitViewController, animated: true, completion: nil)
 ```

## UIViewControllerRepresentable

こちらのコード例は、`SwiftUICompatible` と呼ばれるフレームワークを使用しています。

[`SwiftUICompatible` へアクセスするにはこちらをクリックしてください。](https://github.com/mszpro/SwiftUICompatible)

SwiftUI は新しいフレームワークであるので、フィーチャー UIKit の幾らかを欠いています。そららフィーチャー UIKit を活用する為には、UIViewControllerRepresentable を使用しなければなりません。

| QuickLookView | PhotoPickerView | MailComposeView |
|---|---|---|
| ファイル内容をプレビュー | フォトピッカー | メールコンポーザー |
| <img width="300" alt="image" src="/Image/PreviewController.png?raw=true"> | <img width="300" alt="image" src="/Image/PhotoPicker.png?raw=true"> | |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/PreviewController_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/PhotoPickerController_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/EmailCompose_Example.swift) |

<br/><br/>

| TextMessageComposerView | SafariView | DocumentPicker |
|---|---|---|
| テキストメッセージコンポーザー | ウェブ表示 | ドキュメントピッカー |
| | <img width="300" alt="image" src="/Image/SafariView.png?raw=true"> | <img width="300" alt="image" src="/Image/FileBrowser.png?raw=true"> |
|
 [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/MessageCompose_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/SafariView_Example.swift) | [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/FileBrowser_Example.swift) |

## UIViewRepresentable

SwiftUIでUIKitの UIView を互換性のあるものにするために、
UIViewRepresentableを使用することにします。

| QRCodeScanner |
|---|
| SwiftUIのビューでQRコードを読み取る |
| <img width="300" alt="image" src="/Image/qr-scanner-swiftui.jpg?raw=true"> |
| [コード例を見る](https://github.com/mszpro/Learn-SwiftUI/blob/main/Code/Competible/QRCodeScanner_UIViewRepresentable.swift) |

<br>

---

# 私が公開したSwiftUIに関するの記事

https://qiita.com/search?q=user%3AMaShunzhe%20tag%3ASwiftUI&sort=created

<br>

---

# SwiftUI ビューの基本フォーマット

SwiftUI ビューの基本構造は次のとおり：

```swift
import SwiftUI

struct TextField_Example: View {
    
    // 変数
    
    var body: some View {
        
        //UIコンポーネント
        //Text, Image, Form, VStack, List, ...
        
    }
    
}
```

`var body: some View` セクションで、ビューコードを入力。

このWebページで提供されているサンプルコードでは、`body` コードブロック内のコンテンツに注意を払う必要がある。

`// 変数` セクションで、変数を宣言する。

<br>

# 変数の型

お気づきになられたかもしれませんが、`SwiftUI` にはいくつもの型の変数があります。最もよく使われている変数の型2つを以下でご紹介します。

## @State

```swift
struct ButtonSheet_Example: View {

    @State var showAnotherView: Bool = false
    
    var body: some View {
        
        Button(action: {
            self.showAnotherView = true
        }, label: {
            Text("別のビューを表示")
        })
        .sheet(isPresented: $showAnotherView, content: {
            AnotherView(textContent: "Hello World.")
        })
        
    }
}
```

`@State` の値を変更することで、ビューの見た目に影響を与えることができます。

例えば、もしプログラムのどこかで `showAnotherView`が `true` に設定されていれば、ビュー `AnotherView` が表示されます。

プログラムの中で `@State` 変数を使う時は、変数名の前に `$` 記号を付け加える必要があるかもしれません。そうすることで、ビューにその変数を監視（および変数が変更されればビューのコンテンツを更新）させることができます。

`@State` 変数の値を次の3つの方法で初期化できます：

1. `@State var showAnotherView: Bool = false`
2. ビュー `ButtonSheet_Example` を初期化すると、変数を初期化できます。 `ButtonSheet_Example(showAnotherView: true)`
3. `init` 関数の中で変数を初期化できます：

```swift
struct ButtonSheet_Example: View {

    @State var showAnotherView: Bool
    
    init(...) {
        self.showAnotherView = .init(initialValue: false)
    }
    
    var body: some View {
        // TODO
    }
    
}
```

## 変数 (var)

変数は値を格納するために利用されます。変数を更新してもプログラムの見た目に影響はありません。

```swift
struct ButtonSheet_Example: View {

    var userTappedButton: () -> Void
    
    var body: some View {
        
        Button(action: {
            self.userTappedButton()
        }, label: {
            Text("別のビューを表示")
        })
        
    }
}
```

<br>

# プレビュー

XcodeではSwiftUIファイルに加えた変更を直接プレビューすることができます。プレビューは以下のように宣言します。

```swift
struct TextField_Example_Previews: PreviewProvider {
    static var previews: some View {
        TextField_Example(textEntered: "SwiftUI_Components-Library")
    }
}
```

`static var previews: some View` 内で、SwiftUI表示を初期化していただけます。Xコードの右側にある `Resume` ボタンをクリックするとプレビューが表示されます。

<br>

# ⭐️

[Mastodon @me@mszpro.com](https://sns.mszpro.com/home)

[Twitter @MszPro](https://twitter.com/MszPro)

[個人ウェブサイト](https://MszPro.com)

:sunny: 私の公開されている記事をカテゴリー別にご覧いただけます：

<img width="150" src="https://cdn.mszmagic.com/static-web-content/AppClipImage_small.png">

![writing-quickly_emoji_400.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/635330/640938e9-c121-8152-b8c4-8ab63124afcc.png)
