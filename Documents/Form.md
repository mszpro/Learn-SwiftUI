#  Form

[メニューに戻る](/)

ユーザーから情報を収集するためのフォームを表示する

<img width="300" alt="image" src="/Image/LoginForm.png?raw=true">

```swift
import SwiftUI

struct LoginForm_Example: View {
    
    var onSubmit: (String, String) -> Void
    
    @State private var userName: String = ""
    @State private var password: String = ""
    
    var body: some View {
        
        Form {
            
            Section {
                
                TextField("電子メールアドレス", text: $userName)
                
                SecureField("パスワード", text: $password)
                
            }
            
            Button(action: {
                self.onSubmit(userName, password)
            }) {
                Text("ログインする")
            }
            
        }
        
    }
    
}

struct LoginForm_Example_Previews: PreviewProvider {
    static var previews: some View {
        LoginForm_Example(onSubmit: { username, password in
            print("\(username) \(password)")
        })
    }
}
```

## Common `Form` elements

TextField
Picker
Toggle
Slider
Stepper
Button

## View modifiers


以下は一般的なビューモディファイアです：

| .padding() | オブジェクトの周囲にスペースを追加 |
| .onAppear | 画面にビューが表示されたときに実行するコード |
| .onDisappear | ビューが画面から消えるときに実行するコード |

[メニューに戻る](/)
