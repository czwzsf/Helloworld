# SwiftUI学习

#### 视图学习初览

```swift
import SwiftUI
import PlaygroundSupport

struct ContentView: View{
    var body: some View{
        VStack{
            Text("😇").font(.system(size: 100))
            Text("Nerdy")
                .font(.system(size: 30))
                .foregroundColor(.white)
        }
        .frame(width: 300, height: 300)
        .background(Color.orange)
    }
}
PlaygroundPage.current.setLiveView(ContentView())

```

#### 效果图片

<!-- <img src="/Users/chenzhewei/Desktop/学习/MarkDown/img/image-20220528220711747.png" alt="image-20220528220711747" style="zoom:50%;" /> -->

#### 新建项目来实践

##### 1.新建项目

<!-- ![image-20220528224044705](/Users/chenzhewei/Desktop/学习/MarkDown/img/image-20220528224044705.png) -->

##### 2.生成一个可以点击按钮并发声的应用

```swift
//
//  ContentView.swift
//  HelloWorld
//
//  Created by chenzhewei on 2022/5/28.
//

import SwiftUI
import AVFoundation

struct ContentView: View {
    var body: some View {
        Button{
            let utterance = AVSpeechUtterance(string: "你好啊")//想要发声的语句
            utterance.voice = AVSpeechSynthesisVoice(language: "zh-hans")//通过指定您的文本应该使用的语言代码或使用 voiceWithIdentifier 来检索语音对于已知的语音标识符。
            let synthessizer = AVSpeechSynthesizer()//创建 AVSpeechSynthesizer 的实例以使用 AVSpeechUtterance 对象开始生成合成语音。
            synthessizer.speak(utterance)//使用生成的实例来将之前写的语句读出来
            
        }label: {
            Text("Hello World!")
                .fontWeight(.bold)// bold将文字变为粗体
                .font(.system(.title, design: .rounded))//将文字的形式变为标题，字体的设计变的圆满
                .padding()
        }
        .padding()
        .foregroundColor(.white)
        .background(Color.orange)
        .cornerRadius(20)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

```

<!-- <img src="/Users/chenzhewei/Desktop/学习/MarkDown/img/image-20220528230554851.png" alt="image-20220528230554851" style="zoom:50%;" /> -->

